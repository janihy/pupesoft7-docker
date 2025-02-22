#!/bin/bash
echo "Building Pupesoft7 Docker image"
git clone https://github.com/akirjavainen/pupesoft7.git --depth=1
podman build -t pupesoft7 .
