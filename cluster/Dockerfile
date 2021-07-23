FROM alpine

ENV IPFS_CLUSTER_PATH      /data/ipfs-cluster
ENV IPFS_CLUSTER_CONSENSUS crdt
ENV IPFS_CLUSTER_DATASTORE leveldb

EXPOSE 9094
EXPOSE 9095
EXPOSE 9096

RUN apk update && apk upgrade && apk add --update bash ca-certificates

COPY ipfs-cluster-service/ipfs-cluster-service /usr/local/bin/ipfs-cluster-service
COPY ipfs-cluster-ctl/ipfs-cluster-ctl /usr/local/bin/ipfs-cluster-ctl
COPY ipfs-cluster-follow/ipfs-cluster-follow /usr/local/bin/ipfs-cluster-follow
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN mkdir -p $IPFS_CLUSTER_PATH

VOLUME $IPFS_CLUSTER_PATH

CMD ["/usr/local/bin/entrypoint.sh"]
