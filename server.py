import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)                           
s.bind(('0.0.0.0', 2222))                                                       
s.listen(5)                                                                     
while True:
  conn, addr = s.accept()                                                 
  while True:                                                             
    data = conn.recv(1024)    
    print(data.decode("utf-8","ignore"))
    if not data : break
    if data.decode() == 'close' : 
      print(data.decode())
      conn.close
      s.close
      exit()
    conn.send(data)
  conn.close
                
