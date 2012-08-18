#!/bin/bash

# Installs and configures python libs and dependencies
# Author: Pedro Chaves
# Since: 18/08/2012

# Installing pip
apt-get install -y python-pip && \
# Dependencies for python MySQLdb lib
apt-get build-dep python-mysqldb && \
# Python libs =]
pip install -r python-requirements.txt

