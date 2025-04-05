#!/bin/bash

apt update;

apt install -y openssh-server;

apt install -y sudo;

service ssh restart;

##

echo "fin."
