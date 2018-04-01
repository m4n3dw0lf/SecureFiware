from node:boron

WORKDIR /usr/src/app

RUN git clone https://github.com/telefonicaid/lwm2m-node-lib

RUN cd lwm2m-node-lib && npm install

CMD ["lwm2m-node-lib/bin/iotagent-lwm2m-client.js"]

