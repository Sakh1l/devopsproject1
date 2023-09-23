#!/bin/bash

# clone the repo
git clone https://github.com/Sakh1l/devopsproject1.git

# Navigate to the cloned repo folder

cd devopsproject1

# build the docker image 

docker build -t my-webpage .

#push the docker image to docker hub
docker push codemagnite/my-webpage

#run the docker container 

docker run -d -p 8090:80 my-webpage
