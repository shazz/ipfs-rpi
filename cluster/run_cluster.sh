echo "create dirs"
mkdir -p repo/cluster
mkdir -p repo/ipfs

echo "start docker compose"
sudo docker-compose up -d

echo "add alias in bashrc"
echo "alias ipfs='sudo docker exec -it ipfs ipfs'" >> ~/.bashrc
source ~/.bashrc

