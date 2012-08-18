#!/bin/bash

# Installs and configures NodeJS environments and programs that I like to use
# Author: Pedro Chaves
# Since: 18/08/2012

BASE_DIR=$HOME/workspace
NODE_DIR=$BASE_DIR/node
NPM_DIR=$BASE_DIR/npm

apt-get install g++

cd $BASE_DIR

# Baixando repositorios
git clone git://github.com/joyent/node.git
git clone git://github.com/isaacs/npm.git

# Instalação do node
cd $NODE_DIR && ./configure && make && make install
# Instalação do npm
cd $NPM_DIR && make install
# Instalando pacotes do npm
npm install -g grunt


