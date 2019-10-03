import socket
import threading

def echo_server (conn):
    print("Вошли")  
    while True:
        data = conn.recv(1024)
        print(data.decode("utf-8","ignore"))
        #if not data : break
        if data.decode() == 'close' : 
            print(data.decode())
            conn.close
            break
        conn.send(data)
    conn.close

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)                           
s.bind(('0.0.0.0', 2222))                                                       
s.listen(10)         
while True:                                                            
    conn, addr = s.accept()
    print("Соединяемся: ", addr)
    t = threading.Thread(target = echo_server, args = (conn, ))
    t.start()