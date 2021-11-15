#!/bin/bash

docker container rm -f browser-new-tab
docker build -t browser-new-tab . 
docker run -d -p 37814:37814 --name browser-new-tab browser-new-tab