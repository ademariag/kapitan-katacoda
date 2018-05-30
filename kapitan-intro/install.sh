#!/bin/bash
echo -n Installing Kapitan requirements..  
apt-get -qq update && apt-get -qq install -y python-dev python3-pip python3-yaml libffi-dev libssl-dev && echo Done
echo Installing Kapitan...
pip3 install --upgrade git+https://github.com/deepmind/kapitan.git --process-dependency-links
