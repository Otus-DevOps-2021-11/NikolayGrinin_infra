#!/bin/bash
sudo apt-get install git
cd && git clone -b monolith https://github.com/express42/reddit.git
cd ~/reddit && bundle install
puma -d
