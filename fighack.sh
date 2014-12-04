#!/bin/bash

echo "==================================================================="
echo "cleaning up all the old containers"
echo "==================================================================="

# clean up any pre-existing docker containers
sudo docker ps -a | awk '{ print $1 }' | grep -v CONTAINER | while read i; do sudo docker rm -f $i; done

echo "==================================================================="
echo "building containers"
echo "==================================================================="

# build out the 2 containers 
sudo fig build

echo "==================================================================="
echo "            starting docker2"
echo "==================================================================="
# start up docker2 which is linked to docker1
sudo fig run docker2
