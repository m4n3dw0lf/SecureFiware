var dtls = require( 'node-dtls' );

dtls.setLogLevel( dtls.logLevel.FINE );

var client = dtls.connect( 5683, 'localhost', 'udp4');

console.log(Object.keys(client.rinfo));

client.on( 'message', function( msg, rinfo ) {
    console.log( msg.toString());
});
