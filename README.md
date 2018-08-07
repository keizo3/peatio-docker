# Ruby on Rails Development Environment

## Overview

### container
Use the following group of containers  
- nginx  
- unicorn + Ruby on Rails  
- mysql 5.6  
- memcache  
- elastic search  
- data store  

Change docker-compose.yml line38
your shared directory of the docker container  
docker-compose.yml#L38  

e.g.  
If you've cloned the CG repository in /var/app/
change to /var/app:/usr/src/app

## Getting started
## Mac
#### clone Repository
```
git clone 
git clone 
```

#### install docker-machine
https://www.docker.com/products/docker-toolbox  
　Install Virtualbox if it's not installed in your computer.
　http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-OSX.dmg  

#### install docker-compose
```
install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.3.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```

#### start docker-machine
```
docker-machine start default
```

#### docker setting
```
vi ~/.profile

export DOCKER_CERT_PATH=~/.docker/machine/machines/default/
export DOCKER_TLS_VERIFY="1"
export DOCKER_MACHINE_NAME="default"
export DOCKER_HOST="tcp://192.168.99.100:2376"
```

#### build
in the cloned docker-compose directory
```
docker-compose build
```

#### up
in the cloned docker-compose directory
```
docker-compose up
```
### access
https://192.168.99.100

---

## docker command
#### stop container
in the cloned docker-compose directory
```
docker-compose stop
```

#### start container(The second and subsequent)
in the cloned docker-compose directory
```
docker-compose start
```
※ Please wait about 20 seconds.

#### all container delete
in the cloned docker-compose directory
```
docker-compose rm
```

#### If you want to execute commands inside the container
```
docker ps
docker exec -it CONTAINER_ID /bin/bash
```
