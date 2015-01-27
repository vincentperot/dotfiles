#!/bin/bash 
DIR="$( cd "$( dirname "$0" )" && pwd )"
NOW=$(date +"%m-%d-%Y") # make sure that the directories exist mkdir -p ${DIR}/backups
mkdir -p ~/texmf/
mkdir -p ~/texmf/tex/
mkdir -p ~/texmf/tex/latex/
mkdir -p ~/.vim/colors/

mv ~/.bashrc ${DIR}/backups/${NOW}_bashrc.backup
ln -s ${DIR}/bashrc ~/.bashrc
echo "Created bashrc symbolic link."

mv ~/.bash_aliases ${DIR}/backups/${NOW}_bash_aliases.backup
ln -s ${DIR}/bash_aliases ~/.bash_aliases
echo "Created bash_aliases symbolic link."

mv ~/.vimrc ${DIR}/backups/${NOW}_vimrc.backup
ln -s ${DIR}/vimrc ~/.vimrc
echo "Created vimrc symbolic link."

mv ~/.vimrc.local ${DIR}/backups/${NOW}_vimrc.local.backup
ln -s ${DIR}/vimrc.local ~/.vimrc.local
echo "Created vimrc.local symbolic link."

mv ~/.vimrc.before ${DIR}/backups/${NOW}_vimrc.before.backup
ln -s ${DIR}/vimrc.before ~/.vimrc.before
echo "Created vimrc.before symbolic link."

mv ~/.vimrc.before.local ${DIR}/backups/${NOW}_vimrc.before.local.backup
ln -s ${DIR}/vimrc.before.local ~/.vimrc.before.local
echo "Created vimrc.before.local symbolic link."

mv ~/.vimrc.bundles ${DIR}/backups/${NOW}_vimrc.bundles.backup
ln -s ${DIR}/vimrc.bundles ~/.vimrc.bundles
echo "Created vimrc.bundles symbolic link."

mv ~/.vimrc.bundles.local ${DIR}/backups/${NOW}_vimrc.bundles.local.backup
ln -s ${DIR}/vimrc.bundles.local ~/.vimrc.bundles.local
echo "Created vimrc.bundles.local symbolic link."

mv ~/matlab.m ${DIR}/backups/${NOW}_matlab.m.backup
ln -s ${DIR}/matlab ~/matlab.m
echo "Created matlab.m symbolic link."

mv ~/texmf/tex/latex/assignment.cls ${DIR}/backups/${NOW}_assignment.cls.backup
ln -s ${DIR}/assignment.cls ~/texmf/tex/latex/assignment.cls
echo "Created assignment.cls symbolic link."

mv ~/texmf/tex/latex/notes.cls ${DIR}/backups/${NOW}_notes.cls.backup
ln -s ${DIR}/notes.cls ~/texmf/tex/latex/notes.cls
echo "Created notes.cls symbolic link."

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

mv ~/.config/git/ignore ${DIR}/backups/${NOW}_gitignore.backup
ln -s ${DIR}/gitignore ~/.config/git/ignore
echo "Created gitignore symbolic link."

mv ~/texmf/tex/latex/references.bib ${DIR}/backups/${NOW}_references.bib.backup
ln -s ${DIR}/references.bib ~/texmf/tex/latex/references.bib
echo "Created references.bib symbolic link."

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall! +BundleClean +qall
echo "Installed all vundle bundles."
