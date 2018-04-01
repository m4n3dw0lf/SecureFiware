var dtls = require( 'node-dtls' );
var fs = require( 'fs' );

var key = fs.readFileSync( 'cert.key' );
var crt = fs.readFileSync( 'cert.crt' );

var server = dtls.createServer({ type: 'udp4', key: key, cert: crt });
server.bind( 5683 );

console.log('DTLS Server listening on port 5683');

server.on( 'secureConnection', function( socket ) {

  console.log( 'New connection from ' +
    [ socket.rinfo.address, socket.rinfo.port ].join(':') );
    socket.send("foda-se\n");

    socket.on( 'message', function( message ) {
    // Echo the message back
    console.log(message.toString());
  });
});
