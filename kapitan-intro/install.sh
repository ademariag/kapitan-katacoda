#!/bin/bash
echo -n Installing Kapitan requirements..  
apt-get update -qq && apt-get install -qq -y python-dev python3-pip python3-yaml libffi-dev libssl-dev && echo Done
echo Installing Kapitan...
pip3 install --upgrade git+https://github.com/deepmind/kapitan.git --process-dependency-links
