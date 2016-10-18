# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples



# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=yes
    fi
fi

if [ "$color_prompt" = yes ]; then
    #source /etc/bash_completion.d/git
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1)\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias wget='wget -c'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


alias la="ls -laF"

export PYTHONSTARTUP=$HOME/.pythonrc
export VISUAL=nano

if [ -d "$HOME/p/bin" ] ; then
    PATH="$HOME/p/bin:$PATH"
fi




alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.mk_withsitepackages='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'




[ $[ $RANDOM % 3] == 0 ] && /usr/bin/ddate  && fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)

PATH="/usr/local/heroku/bin:$PATH"
PATH="/home/visgean/bin/android/tools:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/p/
#source /usr/local/bin/virtualenvwrapper.sh



### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

export GOOGLE_API_KEY="AIzaSyA-UKuylZOwz94Aq3u5ZSG5tHzPqYKEj9g"
export GOOGLE_DEFAULT_CLIENT_ID="342562317035-e71vpeh3fr88845jjva07juf6ctsgv4j.apps.googleusercontent.com"
export GOOGLE_DEFAULT_CLIENT_SECRET="DfpNtKreYvb6XUy_Qz7KJY-t"


#source /etc/bash_completion.d/password-store



export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
export PATH="$HOME/.local/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# added by Anaconda2 2.4.1 installer
#export PATH="/home/Depot/bin/anaconda2/bin:$PATH"
#export NODE_PATH="$HOME/.node_modules"

source ~/.local/bin/virtualenvwrapper.sh

export GOPATH="/home/visgean/p/gocode"
export PATH="$PATH:$GOPATH/bin"
