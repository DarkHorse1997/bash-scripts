#!/bin/bash

echo "Generating ssh key"
ssh-keygen -t rsa -b 4096 -C "Youremail@here.com"

echo "Starting ssh-agent in the background"
eval "$(ssh-agent -s)"

echo "Adding Github key to ssh-agent"
ssh-add ~/.ssh/id_rsa
