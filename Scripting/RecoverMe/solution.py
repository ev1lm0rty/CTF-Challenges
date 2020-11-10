import hashlib
import string
import sys

main = "b086b1451d542357826e0497bd59c00fd8a92ab89cf2a256e13ffb7195d1e6e3"
blah = string.ascii_lowercase + string.digits

for I in blah:
    for J in blah:
        for K in blah:
            for L in blah:
                for M in blah:
                    modified = f"8e35{I}{J}{K}{L}{M}0f410d558a7434ea48c361a"
                    hashobj = hashlib.sha256(modified.encode())
                    final = hashobj.hexdigest()
                    if final == main:
                        print(modified)
                        sys.exit()


