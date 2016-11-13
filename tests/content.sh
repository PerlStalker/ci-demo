#!/bin/sh

NAME=$1
PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "80/tcp") 0).HostPort}}' $NAME)

curl -s http://localhost:$PORT | grep 'fun!</h1>' > /dev/null
