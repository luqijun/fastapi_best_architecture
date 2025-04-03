import sys
import bcrypt

sys.path.append('../')

from backend.common.security.jwt import get_hash_password, password_verify

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python backend/encrypt_str.py <plain_text>")
        sys.exit(1)
    
    plain_str = sys.argv[1]
    salt = bcrypt.gensalt()
    encrypted_str = get_hash_password(plain_str, salt)
    print('encrypted str：' + encrypted_str, ' salt：' + str(salt.hex()) + '  ' + salt.decode())
    verify_result = password_verify(plain_str, encrypted_str)
    print('verify result：' + str(verify_result))