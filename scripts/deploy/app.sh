#!/bin/bash -eu

sudo su -l isucon -c '
BASE_DIR=/home/isucon/isucari

### code fetch ###
cd ${BASE_DIR}; git pull;

### code build ###
cd ${BASE_DIR}/webapp/go; make;

### daemon reload ###
sudo systemctl daemon-reload && sudo systemctl restart isucari.golang.service;
'
