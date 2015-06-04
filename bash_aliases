# Aliases for frequently accessed folders.
alias docs="cd ~/Documents/"
alias dtp="cd ~/Desktop/"
alias dls="cd ~/Downloads/"
alias gitdir="cd ~/Git/"
alias cl="cd ~/Git/cl-research-2014"
alias cv="cd ~/Git/cv-research-2015"
alias cv="cd ~/Git/cv-research-2015"
alias wl="cd ~/Git/word_learning/current_model"

# Aliases for CDF and CSLab remote access.
alias cdf="ssh c2grante@cdf.utoronto.ca"
alias apps="ssh -l eringrant cs.toronto.edu"
alias comps="ssh -l eringrant comps3.cs.toronto.edu"
alias guppy="ssh -l eringrant guppy7.cs.toronto.edu"

# Force use of python3.4.
#alias python="python3.4"
#alias ipython="ipython3"
#alias nb="ipython3 notebook --profile improvedcs"
#alias julianb="ipython3 notebook --profile julia"

# For compiling C programs.
alias compile="gcc -Wall -g -o"

# For converting files to .ogg
alias convert_to_ogg="oggenc -q 3 -o"

# git aliases
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gp='git push'
alias gk='gitk --all&'
alias gx='gitx --all'

# Clear the junk.
alias springcleaning="rm -f *.aux *.log *.dvi *.out *~ *.junk"
