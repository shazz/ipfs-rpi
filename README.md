## IPFS RPi in a Docker container

A bare bones [IPFS](https://ipfs.io) installer for the Raspberry Pi and other ARM-based devices working in a Docker container

### Installation

  ````SHELL
  ./run_image.sh
  ````

  IPFS ports are exposed on:
  - 15001
  - 14001
  - 18080

  Volumes mapping
  - `shared`: shared volume to add, get files between the host and the CLI
  - `repo`: the IPFS repository

### Web interface:

  Open a browser at:
  [http://host-ip:15001/ipfs/QmfQkD8pBSBCBxWEwFSu4XaDVSWK6bjnNuaWZjMyQbyDub/#/files/](http://host-ip:15001/ipfs/QmfQkD8pBSBCBxWEwFSu4XaDVSWK6bjnNuaWZjMyQbyDub/#/files/)
  
  To read a file from the network:
  [http://host-ip:18080/ipfs/Qmd4CVn3EgC1VQcF9dc2Y49pp7CuJKQe82pUS6ZnAo7abY](http://host-ip:18080/ipfs/Qmd4CVn3EgC1VQcF9dc2Y49pp7CuJKQe82pUS6ZnAo7abY)
  
### CLI

  ex:
  ````SHELL
  sudo docker exec -it ipfs ipfs pin ls --type recursive
  ````
  
  Use the /shared volume to add files in the unixfs:
  ````
  cp -r mymovies shared/
  sudo docker exec -it ipfs ipfs add -r /shared/mymovies/
  added QmbFMke1KXqnYyBBWxB74N4c5SBnJMVAiMNRcGu6x1AwQH mymovies/movie1.avi
  added Qmd4CVn3EgC1VQcF9dc2Y49pp7CuJKQe82pUS6ZnAo7abY mymovies/movie2.avi
  added QmVRafFA8Qv4nGqRhUdDXDNn58hLQZTkSQ9YeYViDHJbGV mymovies
  
  sudo docker exec -it ipfs ipfs files cp /ipfs/QmVRafFA8Qv4nGqRhUdDXDNn58hLQZTkSQ9YeYViDHJbGV /
  sudo docker exec -it ipfs ipfs files mv /QmVRafFA8Qv4nGqRhUdDXDNn58hLQZTkSQ9YeYViDHJbGV /cool_movies
  ````
  
  To pin a file locally:
  ````SHELL
  sudo docker exec -it ipfs ipfs pin add QmbFMke1KXqnYyBBWxB74N4c5SBnJMVAiMNRcGu6x1AwQH
  sudo docker exec -it ipfs ipfs pin ls --type recursive
  ````
  
### Acknowledgements

Thanks a lot to Claudio Bizzotto (fork from https://github.com/claudiobizzotto/ipfs-rpi) and Analog Void (https://github.com/analogvoid/rpi-ipfs) for the original code

