#!/bin/bash
set +o xtrace
echo "Please wait while we download the latest version of Kapitan if needed"
pip3 install -U kapitan -q && echo "Done!"
