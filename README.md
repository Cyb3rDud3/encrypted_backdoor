# encrypted_backdoor
Just another AES encrypted Reverse shell over http using flask and pyAEScrypt

Commands:
     py_run $python_code Example: py_run 2+2, py_run print('\n'.join([i for i in __import__('os').listdir()]))
     loadByteCode $pythonByteCode Example: loadByteCode b'\xfa\x08print(1)
     $syscommand --> will run with default terminal. Example: whoami
  
Encryption:
  - Commands sent by the client are encrypted with Hardcoded key "secret_key" var
  - the results sent back by the server are Encrypted using the first 8 chars of the decrypted command, while stripping and removing whitespaces
  - Example: client send 'whoami', the command is encrypted with the hardcoded key.
    the server will validate and decrypt the payload, execute the payload, and the results will be encrypted with the key 'whoami'
    if the length of the payload < 8, then the key for decryption will be the whole payload.
    
** Created for research ONLY.  **
   
    
