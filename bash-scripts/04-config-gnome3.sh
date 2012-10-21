#!/bin/bash

add-apt-repository ppa:gnome3-team/gnome3 && \
add-apt-repository ppa:ricotz/testing && \
apt-get update && \
apt-get install gnome-shell gnome-tweak-tool

