#!/bin/bash
apt update && apt install -y git docker docker-compose
git clone https://github.com/akirjavainen/pupesoft7.git --depth=1
docker build -t pupesoft7 .
docker-compose up -d
