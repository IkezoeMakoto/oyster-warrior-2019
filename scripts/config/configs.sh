#!/bin/bash -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
. $SCRIPT_DIR/backup.sh /etc/nginx/nginx.conf
. $SCRIPT_DIR/backup.sh /etc/nginx/sites-available/isucari.conf
. $SCRIPT_DIR/backup.sh /etc/mysql/mysql.conf.d/mysqld.cnf
. $SCRIPT_DIR/backup.sh /etc/systemd/system/isucari.golang.service
