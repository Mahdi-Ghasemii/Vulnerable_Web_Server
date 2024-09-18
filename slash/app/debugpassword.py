def xor_encrypt_decrypt(data, key):
    return bytes([a ^ b for a, b in zip(data, key * (len(data) // len(key) + 1))])

def get_encrypted(passwd):
    return xor_encrypt_decrypt(bytes(passwd , 'utf-8'), b'ayham')


# passw = b' \x00\x00\x00\x00%\x1c\r\x03\x18\x06\x1e'
passwd = "AyhamDeebugg"
print(get_encrypted(passwd))