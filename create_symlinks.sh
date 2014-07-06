#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
NOW=$(date +"%m-%d-%Y")

mkdir -p ${DIR}/backups

mv ~/.bashrc ${DIR}/backups/${NOW}_bashrc.backup
ln -s ${DIR}/bashrc ~/.bashrc
echo "Created bashrc symbolic link."

mv ~/.vimrc ${DIR}/backups/${NOW}_vimrc.backup
ln -s ${DIR}/vimrc ~/.vimrc
echo "Created vimrc symbolic link."

mv ~/matlab.m ${DIR}/backups/${NOW}_matlab.m.backup
ln -s ${DIR}/matlab ~/matlab.m
echo "Created matlab.m symbolic link."
