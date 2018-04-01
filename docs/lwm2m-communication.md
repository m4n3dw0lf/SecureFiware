# LWM2M and CoAP Communication docs.

## Fiware LMWM2-IOTA UDP Socket creation process

![](img/fiware-iota-udp-insecure.png)

Notice that the weakness of packet intercepting in this LWM2M implementation happens because the nodejs doesn't have untill now a default CoAP library that has a DTLS solution implemented.


### Result in Plain-Text LWM2M Packets capture

#### CoAP Client request

![](img/coap-plaintext1.png)


#### CoAP Server response

![](img/coap-plaintext2.png)


#### The interception of those data (mainly the token) allow attacks on the CoAP protocol such as CoAP spoofing, described [here](coap-spoofing.md)

## CoAP packet analysis

| Version (2-bit) | Transaction Type (2-bit) | Token Length (4-bit) | Code (8-bits) |
| - | - | - | - |
| **Value**: <br> 1 <br> (Other values <br> are reserved<br> for future use)   | **Values:** <br> 0 = CON <br> 1 = NON <br> 2 = ACK <br> 3 = RST | **Values:** <br> 0-8, <br>(lengths 9-15 <br> are reserved<br> for future) | **Values**: <br> 1 = GET <br> 2 = POST <br> 3 = PUT <br> 4 = DELETE
| **MessageID (16-bits)**| **Token** | **Options (if any)** | **Payload (if any)** |
|16 bits random value| Fill with random <br> bits matching<br> the declared <br> Token Length | [CoAP Options <br> RFC](https://tools.ietf.org/html/rfc7252#page-18) <br> if none = 255 (FF) | Data


# To be continued
