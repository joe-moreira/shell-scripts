#!/bin/bash
sudo apt-get -y install build-essential tcl gcc make
cd /tmp
wget http://download.redis.io/releases/redis-5.0.4.tar.gz
tar -xvzf redis-5.0.4.tar.gz
sudo cp -r redis-5.0.4 /etc/
cd /etc/redis-5.0.4/deps/
sudo make distclean
sudo make hiredis lua jemalloc linenoise
cd ..
sudo make
sudo make test
sudo make install
