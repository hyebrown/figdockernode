#Dockerfile for simple node js 'hello world' endpoint

FROM ubuntu:14.04

MAINTAINER Hiram Brown <hyebrown@yahoo.com>

# Add Chris Lea's Node.js PPA
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C7917B12
RUN echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main" > /etc/apt/sources.list.d/nodejs.list


#install nodejs and git
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs git git-core

ADD index.js ./
ADD package.json ./

RUN npm install

CMD node index.js






