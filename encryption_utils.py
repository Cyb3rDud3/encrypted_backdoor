import pyAesCrypt
import io
from random import choice
from string import ascii_letters, digits
bufferSize = 64 * 1024

def encrypt(data: str,secret: str) -> bytes:
    data = data.encode()
    input_stream = io.BytesIO(data)
    encrypted_stream = io.BytesIO()
    pyAesCrypt.encryptStream(input_stream, encrypted_stream, secret, bufferSize)
    return encrypted_stream.getvalue()


def decrypt(data: bytes, secret: str) -> str:
    decrypted_stream = io.BytesIO()
    data = io.BytesIO(data)
    data_len = len(data.getvalue())
    pyAesCrypt.decryptStream(data,decrypted_stream,secret,bufferSize,data_len)
    return decrypted_stream.getvalue().decode()

