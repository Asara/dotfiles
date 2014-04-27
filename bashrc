#
# ~/.bashrc
#
# Check if the shell is non-interactive
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

### HISTORY OPTIONS ###

# Ignore duplicate commands and commands starting with a space for Bash history
HISTCONTROL=ignoredups:ignorespace

# Bash History file size
HISTSIZE=1000
HISTFILESIZE=2000


### SHELL OPTIONS ###

# fix text wrap based on windows size
shopt -s checkwinsize

# append to the history file, don't overwrite it
shopt -s histappend

# entering directory name will automatically cd to it.
shopt -s autocd

# make multiline input single line in history (i.e. \)
shopt -s cmdhist


### ALIASES ###

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# IP
alias ipme='wget -qO - icanhazip.com'
alias speedtest='wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip'
alias netlist='lsof -i -nP'

### SHELL SETTINGS ###

# Bash Prompt
PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "


# Export environmental variables
export EDITOR=vim
export BROWSER=firefox


### FUNCTIONS ###

# Easy Extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "I dont know how to extract $1..." ;;
      esac
  else
	  echo "`$1` is not a file!"
  fi
}

# Source external file
if [[ -f ~/.customrc ]]; then
    . ~/.customrc
fi
