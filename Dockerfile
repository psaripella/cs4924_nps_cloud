FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm

ADD index.js /usr/apps/nodeCode/index.js
WORKDIR /usr/apps/nodeCode/

CMD ["node", "index.js"] 
