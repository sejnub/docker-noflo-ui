# docker-noflo-ui
This repository contains the things needed to build docker images [for noflo-ui](https://github.com/noflo/noflo-ui). You can try a hosted version of it at [flowhub](http://flowhub.io/).

## Status and rights
AFAIK stable. 
Totally free to use by everyone.

## Tags
  * **``rpi-latest``**  noflo-ui for Raspberry Pi

## Build

    cd ~; rm -rf docker-noflo-ui; git clone https://github.com/sejnub/docker-noflo-ui.git
    cd ~/docker-noflo-ui; docker build -t sejnub/noflo-ui:rpi-latest .
    
    eof


## Push images to https://hub.docker.com
If you are not sejnub you have to retag the images to your username at dockerhub and use those new tags. The following commands use the authors tags.

Log into dockerhub and push the images with
    
    docker login
    docker push sejnub/noflo-ui:rpi-latest


## Run
Run an interactive bash

    docker rm -f noflo-ui; docker run -it -p 80:80 --name noflo-ui sejnub/noflo-ui:rpi-latest bash

Run the latest or the updated version

    docker rm -f noflo-ui; docker run -d  -p 80:80 --name noflo-ui sejnub/noflo-ui:rpi-latest

    eof
    
    
## Access the server 
In your browser open http://<ip-of-the-docker-host>/index.html

