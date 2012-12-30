#PS1='\u@\h:\W \$ '
PS1='\[\033[1m\]\u@\h \[\033[0;31m\]\W \$ \[\033[00m\]'

# set editor as vim
EDITOR='vim'
alias vi="vim"

#vi-compatiple command line
set -o vi

#platform independents
CLICOLOR=1
alias d="ls --color"
alias dir="ls --color"
alias ls="ls --color=auto"
alias ll="ls --color -lha"
alias la="ls --color -la"
alias grep="grep --color"
alias pgrep="pgrep -f"
alias pkill="pkill -f"
alias egrep="egrep --color"
alias fgrep="fgrep --color"
alias cls="clear"
alias cd..="cd .."
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

## Mac OS X dependent settings
if [ $(uname -s) = "Darwin" ]; then

  # QT bin on Mac OS X
  #PATH=$PATH:$HOME"/QtSDK/Desktop/Qt/474/gcc/bin"

  # latex binaries
  PATH=$PATH:"/usr/local/texlive/2012/bin/x86_64-darwin"

  # tree
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

  # gnubin utils installed with macports
  export PATH="/opt/local/libexec/gnubin:$PATH"

  # gnuplot
  export GNUTERM=X11

  # MacPorts Installer addition 
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  export MANPATH="$MANPATH:/opt/local/share/man"
  export INFOPATH="$INFOPATH:/opt/local/share/info"

  # autojump for bash installed with macports
  if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
      . /opt/local/etc/profile.d/autojump.sh
      export AUTOJUMP_IGNORE_CASE=1
      export AUTOJUMP_KEEP_SYMLINKS=1
  fi

  # bash_completion installation installed with macports
  if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
  fi

fi


## Other 
if [ $(uname -s) = "Linux" ]; then
  # autojump for bash (ubuntu package)
  if [ -f /usr/share/autojump/autojump.bash ]; then
      . /usr/share/autojump/autojump.bash
      export AUTOJUMP_IGNORE_CASE=1
      export AUTOJUMP_KEEP_SYMLINKS=1
  fi
fi

# Add home bin to the PATH
if [ -d ~/bin ]; then
  export PATH=$PATH:$HOME"/bin"
fi

# addtional program settings
if [ -f ~/programs/.bashrc ]; then
    . ~/programs/.bashrc 
fi

## application aliases
# subversion
alias svn_extract_dot_files='find . -name .svn -print0 | xargs -0 rm -rf'
alias svnadd='svn st | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svndiff='svn diff --diff-cmd ~/bin/svnvimdiff'

#additional alias
alias chmox='chmod +x'

# mysql aliases for MAC OS X
if [ $(uname -s) = "Darwin" ]; then
  alias mysql=/usr/local/mysql/bin/mysql
  alias mysqladmin=/usr/local/mysql/bin/mysqladmin
fi

if [ -f ~/.bash_profile2 ]; then
  source ~/.bash_profile2
fi

