#!/bin/bash
echo "test" > $HOME/test_alessandro
apt-get update -qq && apt-get -qq install -y python-dev python3-pip python3-yaml libffi-dev libssl-dev
