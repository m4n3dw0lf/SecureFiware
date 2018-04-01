## DTLS Configuration

To configure the DTLS Solution, you just need to put those settings in the configuration file of the IoT Agent, and assure that the certificate and key are in a valid path set as parameter.

define a **dtls** key inside the **config.lwm2m** JSON, and set the parameters:

- `port` : port to the dtls server listen.

- `cert` : valid path to certificate

- `key` : valid path to key


```
config.lwm2m = {
    dtls: {
      port: 5684,
      cert: "cert.crt",
      key: "cert.key"
    }
}
```


<br>

## Connect to Orion in HTTPS context.

We designed a easy way to configure the LWM2M IoT Agent to connect to the Orion Context Broker using https or http to achieve that we declared a key in the <b>lightweightm2m-iotagent/config-secure.js</b> file in the <b>config.ngsi.contextBroker</b> JSON
<br>
Notice the <b>protocol</b> parameter:
<br>
- If your Orion Context Broker runs with <b>http</b> set the <b>protocol</b> parameter as:<br>
<code>
protocol: 'http'
</code>
<br>
- If your Orion Context Broker runs with <b>https</b> set the <b>protocol</b> parameter as:<br>
<code>
protocol: 'https'
</code>
<br>

```
config.ngsi = {
    contextBroker: {
        host: 'localhost',
        port: '1026',
        protocol: 'https'
    }
}
```

<br>

## IoT Agent HTTPS Configuration

To bring the IoT Agent using HTTPS Context up, you just need to declare a parameter in the configuration, just like this

Declare a **tls** parameter inside the **config.ngsi.server** JSON and set the **key** path and **certificate** path.

```
config.ngsi = {
   server: {
        port: 4041,
        tls: {
          key: "cert.key",
          crt: "cert.crt"
        }
    }
}
```
