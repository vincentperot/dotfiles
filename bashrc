# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return;;
esac

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Set a fancy prompt (non-color, unless we know we "want" color).
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir.
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Some more ls aliases.
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Define aliases in an external file.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Generate a randomised password string.
genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

# Enable 256 colours & some other features.
export TERM="xterm-256color"

# Set the default editor.
export GIT_EDITOR=/usr/bin/vim
export EDITOR=/usr/bin/vim

# Define some aliases to force an "are you sure?" if action might result in data loss.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# History not deleted upon terminal exit. Command is history.
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend

# Combine multiline commands into one in history
shopt -s cmdhist

# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
HISTCONTROL=ignorespace
export HISTIGNORE="&:ls:[bf]g:exit"

# No more cd ../../../.. but up 4
up() {
    local d=""
    limit=$1
    for ((i=1 ; i <= limit ; i++))
        do
            d=$d/..
        done
    d=$(echo $d | sed 's/^\///')
    if [ -z "$d" ]; then
        d=..
    fi
    cd $d
}

# Easy extract command.
easy_extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       rar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
       echo "'$1' is not a valid file"
   fi
}

# Add a home directory bin folder to the path.
export PATH=~/bin:$PATH
export PATH=~/local/bin:$PATH
export PYTHONPATH=~/Python:$PYTHONPATH

# Extreme compression for gzip.
export GZIP=-9

##############################################################################
# CSLab Deep Learning
##############################################################################

# CUDA compatibility.
if [ "${HOSTNAME:0:5}" == "guppy" ]; then
        export CUDA_HOME="/pkgs_local/cuda-5.5"
elif [ "${HOSTNAME:0:12}" == "deeplearning" ]; then
        export CUDA_HOME="/pkgs/cuda-5.5"
elif [ "${HOSTNAME:0:7}" == "cluster" ]; then
        export CUDA_HOME="/pkgs/cuda-5.5"
elif [ "${HOSTNAME:0:6}" == "krunch" ]; then
        export CUDA_HOME="/pkgs_local/cuda-5.5"
fi

if [ -n ${CUDA_HOME}:+word} ]; then
        export PATH="${PATH}:${CUDA_HOME}/bin"
        export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${CUDA_HOME}/lib:${CUDA_HOME}/lib64"
fi

# MPICH (message-passing for distributed-memory apps in parallel computing) compatibility.
if [ "${HOSTNAME:0:5}" == "guppy" ]; then
    export PATH="/pkgs/mpich-3.0.4/bin:${PATH}"
    export LD_LIBRARY_PATH="/pkgs/mpich-3.0.4/lib/x86_64-linux-gnu/:${LD_LIBRARY_PATH}"
elif [ "${HOSTNAME:0:12}" == "deeplearning" ]; then
    export PATH="/pkgs/mpich-3.0.4/bin:${PATH}"
    export LD_LIBRARY_PATH="/pkgs/mpich-3.0.4/lib/x86_64-linux-gnu/:${LD_LIBRARY_PATH}"
elif [ "${HOSTNAME:0:7}" == "cluster" ]; then
    export PATH="/pkgs/mpich-3.0.4/bin:${PATH}"
    export LD_LIBRARY_PATH="/pkgs/mpich-3.0.4/lib/x86_64-linux-gnu/:${LD_LIBRARY_PATH}"
elif [ "${HOSTNAME:0:6}" == "krunch" ]; then
    export PATH="/pkgs/mpich-3.0.4/bin:${PATH}"
    export LD_LIBRARY_PATH="/pkgs/mpich-3.0.4/lib/x86_64-linux-gnu/:${LD_LIBRARY_PATH}"
fi

# GPU control.
alias checkgpu='/u/tang/bin/gpu_lock2.py'
alias lockgpu='/u/tang/bin/gpu_lock2.py --id'
hoggpu() {
    u/tang/bin/gpu_lock2.py --id-to-hog $1
}
freegpu() {
    u/tang/bin/gpu_lock2.py --free $1
}
