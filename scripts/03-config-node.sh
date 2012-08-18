#!/bin/bash

# Installs and configures NodeJS environments and programs that I like to use
# Author: Pedro Chaves
# Since: 18/08/2012

BASE_DIR=$HOME/workspace
NODE_DIR=$BASE_DIR/node
NPM_DIR=$BASE_DIR/npm

# Cloning Node and NPM repositories from git
git clone git://github.com/joyent/node.git $NODE_DIR
git clone git://github.com/isaacs/npm.git $NPM_DIR

# Installing node
cd $NODE_DIR && ./configure && make && make install && \
# Installing npm
cd $NPM_DIR && make install && \
# Instalando node's packages
npm install -g grunt


