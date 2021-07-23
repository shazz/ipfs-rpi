echo "Python deps for docker compose"
sudo apt-get install make gcc libffi-dev libssl-dev python3 python3-pip
sudo apt-get remove python-configparser
sudo pip3 -v install docker-compose

echo "Cluster binaries for am64"
VERSION="0.14.0"
rm *.gz
wget https://dist.ipfs.io/ipfs-cluster-service/v0.14.0/ipfs-cluster-service_v${VERSION}_linux-arm64.tar.gz
wget https://dist.ipfs.io/ipfs-cluster-follow/v0.14.0/ipfs-cluster-follow_v${VERSION}_linux-arm64.tar.gz
wget https://dist.ipfs.io/ipfs-cluster-ctl/v0.14.0/ipfs-cluster-ctl_v${VERSION}_linux-arm64.tar.gz

tar -xvf ipfs-cluster-service_v${VERSION}_linux-arm64.tar.gz
tar -xvf ipfs-cluster-follow_v${VERSION}_linux-arm64.tar.gz
tar -xvf ipfs-cluster-ctl_v${VERSION}_linux-arm64.tar.gz

#echo "Utils"
rm -rf su-exec
rm tini
#SUEXEC_VERSION=v0.2
#TINI_VERSION=v0.19.0
#wget -q -O tini https://github.com/krallin/tini/releases/download/$TINI_VERSION/arm64
#chmod a+x tini
#git clone https://github.com/ncopa/su-exec.git && cd su-exec && git checkout -q $SUEXEC_VERSION && make su-exec-static

echo "cleaning"
rm *.gz
