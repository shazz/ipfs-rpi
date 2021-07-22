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
COPY su-exec/su-exec-static /sbin/su-exec
COPY tini /sbin/tini


RUN mkdir -p $IPFS_CLUSTER_PATH && \
    adduser -D -h $IPFS_CLUSTER_PATH -u 1000 -G users ipfs && \
    chown ipfs:users $IPFS_CLUSTER_PATH

VOLUME $IPFS_CLUSTER_PATH
# ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

# Defaults for ipfs-cluster-service go here
#CMD ["daemon"]
CMD ["/usr/local/bin/entrypoint.sh"]
