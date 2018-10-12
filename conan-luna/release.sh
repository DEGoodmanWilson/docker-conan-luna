#!/bin/bash

set -ex

# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=degoodmanwilson
# image name
IMAGE=luna

# read version from VERSIOn file
version=`cat VERSION`
echo "version: $version"

# run build
./build.sh

# tag it
git add -A
git commit -m "version $version"
git tag -a "v$version" -m "version $version"
git push
git push --tags

docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push it
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
