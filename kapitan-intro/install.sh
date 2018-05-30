#!/bin/bash
apt-get -qq update && apt-get -qq install -y python3-dev python3-pip python3-yaml libffi-dev libssl-dev && pip3 install --upgrade git+https://github.com/deepmind/kapitan.git --process-dependency-links
