import ssl
from socket import socket, AF_INET, SOCK_DGRAM
from dtls import do_patch
do_patch()
sock = ssl.wrap_socket(socket(AF_INET,SOCK_DGRAM),keyfile="cert.key",certfile="cert.crt")
sock.bind(("localhost",5683))
sock.listen(0)
print "DTLS Server listening on port 5683"
while True:
  conn,addr = sock.accept()
  data = conn.recv(1024)
  print "message: {}".format(data)

