#!/bin/bash

# Installs and configures general environments libs and programs
# Author: Pedro Chaves
# Since: 18/08/2012

apt-get update && \
apt-get install -y vim git g++ libmysqlclient-dev mysql-server mysql-client mysql-workbench nginx
