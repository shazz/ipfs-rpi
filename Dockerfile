FROM alpine
ENV IPFS_PATH /data/ipfs
EXPOSE 4001 5001 8080
VOLUME /data/ipfs

RUN apk update && apk upgrade && apk add --update bash wget ca-certificates zip curl

RUN wget https://github.com/shazz/ipfs-rpi/archive/refs/heads/master.zip -O /tmp/master.zip
RUN unzip /tmp/master.zip -d /tmp/
RUN cd /tmp/ipfs-rpi-master && ./install

WORKDIR /root
ADD start_ipfs.sh .
#ENTRYPOINT ["/bin/bash", "/root/start_ipfs.sh"]
CMD ["/bin/bash", "/root/start_ipfs.sh"]

