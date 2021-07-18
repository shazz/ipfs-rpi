## IPFS RPi

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi and other ARM-based devices working in Docker containers

### Installation

  ````SHELL
  ./run_image.sh
  ````

  IPFS ports are exposed on:
  - 15001
  - 14001
  - 18080

### Web interface:

  Open a browser at:
  [http://<host-ip>:15001/ipfs/QmfQkD8pBSBCBxWEwFSu4XaDVSWK6bjnNuaWZjMyQbyDub/#/files/](http://<host-ip>:15001/ipfs/QmfQkD8pBSBCBxWEwFSu4XaDVSWK6bjnNuaWZjMyQbyDub/#/files/)
  
### CLI

  ex:
  ````SHELL
  sudo docker exec -it ipfs ipfs pin ls --type recursive
  ````
  
  Use the /shared volume to add / get files
  


