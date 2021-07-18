sudo docker build -t ipfs:rpi .
sudo docker run --rm -d --name ipfs -v ${PWD}/repo:/data/repo -p 18080:8080 -p 14001:4001 -p 15001:5001 ipfs:rpi
