import socket
from sympy import *
from sympy.parsing.sympy_parser import parse_expr

HOST = "XXXXXXXXXXXXXXX"  # server address
PORT = "XXXXXXXXXXXXXXX"  # port

x = Symbol("x")  # これでxの方程式が解けるようになる(右辺を0にすれば)


def sock(ip, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((ip, port))
    return s, s.makefile("rw")

def read_until(f, delim="\n"):
    data = ""
    while not data.endswith(delim):
        data += f.read(1)
    return data

s, f = sock(HOST, PORT)

print(read_until(f))  # これで一行読める


"""  これはいつかのCTFで使った例
for i in range(100):
    exp = read_until(f)
    exp exp[2:]
    exp = exp.replace("?", "x")
    print("<< : " + exp)
    ans = solve(exp)
    print(">> : " + str(ans))
    try:
        s.send(str(ans[0]).encode())
    except:
        s.send(str(0).encode())
    print(read_until(f))

print(read_until(f))
"""