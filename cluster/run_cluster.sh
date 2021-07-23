echo "create dirs"
mkdir -p repo/cluster
mkdir -p repo/ipfs

echo "set secret and keep a copy"
export CLUSTER_SECRET=$(od -vN 32 -An -tx1 /dev/urandom | tr -d ' \n')
echo $CLUSTER_SECRET
echo $CLUSTER_SECRET > repo/cluster/cluster.key

echo "start docker compose"
sudo -E docker-compose up -d

echo "add alias in bashrc"
echo "alias ipfs='sudo docker exec -it ipfs ipfs'" >> ~/.bashrc
echo "alias ipfs-cluster-ctl='sudo docker exec -it cluster ipfs-cluster-ctl'" >> ~/.bashrc
source ~/.bashrc

