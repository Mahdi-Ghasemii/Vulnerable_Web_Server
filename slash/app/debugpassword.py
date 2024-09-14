import pwn

def get_encrypted(passwd):
    return pwn.xor(passwd , b'ayham')