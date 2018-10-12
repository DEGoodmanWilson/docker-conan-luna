#!/bin/bash

set -ex

# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=degoodmanwilson
# image name
IMAGE=luna

docker build -t $USERNAME/$IMAGE:latest .
