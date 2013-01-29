#!/bin/bash

# Installs and configures general environments libs and programs
# Author: Pedro Chaves
# Since: 18/08/2012

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update && \
apt-get install -y google-chrome-stable vim git g++ libmysqlclient-dev mysql-server mysql-client mysql-workbench nginx
