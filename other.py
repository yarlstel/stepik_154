from threading import Thread
import socket

def server(conn, addr):
  while True:
    data = conn.recv(1024)
    if data.decode() == 'close':
      break
    conn.send(data)
  conn.close()
 
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
  s.bind(('0.0.0.0', 2222))
  s.listen(10)
  for _ in range(10):
    conn, addr = s.accept()
    t = Thread(target=server, args=(conn, addr))
    t.start()
