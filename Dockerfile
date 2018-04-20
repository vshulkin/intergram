
FROM node:9-stretch
MAINTAINER Martin Verges <martin.verges@croit.de>

WORKDIR /opt/intergram/

RUN apt -y update \
 && apt -y install git \
 && git clone https://github.com/croit/intergram.git /opt/intergram/ \
 && npm install --only=production \
 && npm run postinstall

CMD [ "npm", "start" ]

