#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
NOW=$(date +"%m-%d-%Y")

# make sure that the directories exist
mkdir -p ${DIR}/backups
mkdir -p ~/texmf/
mkdir -p ~/texmf/tex/
mkdir -p ~/texmf/tex/latex/
mkdir -p ~/.vim/colors/

mv ~/.bashrc ${DIR}/backups/${NOW}_bashrc.backup
ln -s ${DIR}/bashrc ~/.bashrc
echo "Created bashrc symbolic link."

mv ~/.vimrc ${DIR}/backups/${NOW}_vimrc.backup
ln -s ${DIR}/vimrc ~/.vimrc
echo "Created vimrc symbolic link."

mv ~/matlab.m ${DIR}/backups/${NOW}_matlab.m.backup
ln -s ${DIR}/matlab ~/matlab.m
echo "Created matlab.m symbolic link."

mv ~/texmf/tex/latex/assignment.cls ${DIR}/backups/${NOW}_assignment.cls.backup
ln -s ${DIR}/assignment.cls ~/texmf/tex/latex/assignment.cls
echo "Created assignment.cls symbolic link."

mv ~/texmf/tex/latex/selfdefcommands.sty ${DIR}/backups/${NOW}_selfdefcommands.sty.backup
ln -s ${DIR}/selfdefcommands.sty ~/texmf/tex/latex/selfdefcommands.sty
echo "Created selfdefcommands.sty symbolic link."

mv ~/texmf/tex/latex/utlogos.sty ${DIR}/backups/${NOW}_utlogos.sty.backup
ln -s ${DIR}/utlogos.sty ~/texmf/tex/latex/utlogos.sty
echo "Created utlogos.sty symbolic link."

mv ~/texmf/tex/latex/beamercolorthemeacademic.sty ${DIR}/backups/${NOW}_beamercolorthemeacademic.sty.backup
ln -s ${DIR}/beamercolorthemeacademic.sty ~/texmf/tex/latex/beamercolorthemeacademic.sty
echo "Created beamercolorthemeacademic.sty symbolic link."

mv ~/texmf/tex/latex/beamerouterthemeacademic.sty ${DIR}/backups/${NOW}_beamerouterthemeacademic.sty.backup
ln -s ${DIR}/beamerouterthemeacademic.sty ~/texmf/tex/latex/beamerouterthemeacademic.sty
echo "Created beamerouterthemeacademic.sty symbolic link."

mv ~/texmf/tex/latex/beamerinnerthemeacademic.sty ${DIR}/backups/${NOW}_beamerinnerthemeacademic.sty.backup
ln -s ${DIR}/beamerinnerthemeacademic.sty ~/texmf/tex/latex/beamerinnerthemeacademic.sty
echo "Created beamerinnerthemeacademic.sty symbolic link."

mv ~/texmf/tex/latex/beamerfontthemeacademic.sty ${DIR}/backups/${NOW}_beamerfontthemeacademic.sty.backup
ln -s ${DIR}/beamerfontthemeacademic.sty ~/texmf/tex/latex/beamerfontthemeacademic.sty
echo "Created beamerfontthemeacademic.sty symbolic link."

mv ~/texmf/tex/latex/beamerthemeacademic.sty ${DIR}/backups/${NOW}_beamerthemeacademic.sty.backup
ln -s ${DIR}/beamerthemeacademic.sty ~/texmf/tex/latex/beamerthemeacademic.sty
echo "Created beamerthemeacademic.sty symbolic link."

mv ~/texmf/tex/latex/beamerposter.sty ${DIR}/backups/${NOW}_beamerposter.sty.backup
ln -s ${DIR}/beamerposter.sty ~/texmf/tex/latex/beamerposter.sty
echo "Created beamerposter.sty symbolic link."

ln -s ${DIR}/neon.vim ~/.vim/colors/neon.vim
echo "Created vim neon colour file symbolic link."
