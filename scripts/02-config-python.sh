#!/bin/bash

# Installs and configures python libs and dependencies
# Author: Pedro Chaves
# Since: 18/08/2012

# Installing pip and pyvows dependencies
apt-get install -y python-pip libxslt-dev libxml2-dev && \
# Dependencies for python MySQLdb lib
apt-get build-dep python-mysqldb && \
# And finally, the libs :)
pip install -r python-requirements.txt

