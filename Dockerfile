#base image and author
FROM ubuntu:14.04
MAINTAINER Monty Lennie <montylennie@gmail.com>

#update apt-get and get basics
RUN apt-get update
RUN apt-get install -y nodejs npm curl git nodejs-legacy

#get nvm to control node versions and install node 0.12
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
RUN #!/bin/bash source ~/.bashrc

#update npm
RUN sudo npm install npm -g

#install sails
RUN sudo npm -g install sails 

#command to run container (after -v should be replaced with developer's path to sails app)
#docker run -i -t --rm -p 1337:1337 -v /Users/montylennie/Documents/Scout/scout-sails/:/scout-sails mlennie/scout-sails bash