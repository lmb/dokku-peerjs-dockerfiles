FROM ubuntu:14.04
MAINTAINER Lorenz Bauer

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm gawk
RUN npm install -g peer

ENV PEERJS_KEY peerjs

RUN mkdir -p /usr/bin
RUN ln -s /usr/bin/nodejs /usr/bin/node
ADD start-peerjs-server.sh /usr/bin/
RUN chmod +x /usr/bin/start-peerjs-server.sh

EXPOSE 9000
CMD ["/usr/bin/start-peerjs-server.sh"]