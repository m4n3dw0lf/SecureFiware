# Library Installation

```
$ npm install git+https://github.com/Rantanen/node-dtls
```

<br>

# Generate OpenSSL Key and Cert

`$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout cert.key -out cert.crt -subj '/CN=fiware-orion/O=fiware/C=BR'`

<br>

# Run Server

```
$ nodejs dtls_server.py
DTLS Server listening on port 5683
```

# Run Client

```
$ nodejs dtls_client.py
```

# Check the message on the server

```
$ nodejs dtls_server.py
DTLS Server listening on port 5683
New connection from 127.0.0.1:39246
Hi server!
```

![](../img/dtls2.png)


