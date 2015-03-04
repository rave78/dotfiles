#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias l='ls -lrt'
alias mmv='noglob zmv -W'

setopt extended_glob

setopt CLOBBER

# list only directories
alias lsd='ls -1 -d *(/)' 
alias lsp='ls -l -d *.py'
alias notebook='ipython notebook --pylab=inline'
alias zin='sudo zypper install'
alias zup='sudo zypper update'
alias zse='sudo zypper search'

# server
# write alias to the servers

# git alias
alias g='git'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

. /home/federico/Tools/powerline/powerline/bindings/zsh/powerline.zsh

alias eclipse='~/eclipse/eclipse'

export KDEDIRS=$HOME/umbrello:$KDEDIRS
export PATH=$HOME/umbrello/bin:$PATH

# Add ~/algs4/bin to the PATH
export PATH=$PATH:$HOME/algs4/bin

# add vlfeat
export PATH=$PATH:~/Downloads/vlfeat/vlfeat-0.9.16-bin/bin/glnx86

# add luajit
export PATH=$PATH:/usr/local/bin/luajit

# add HTK
export PATH=$PATH:/home/federico/htk

# add luarocks
export PATH=$PATH:/usr/local/bin/luarocks:/usr/local/etc/luarocks:/usr/local/lib/luarocks

# add gfx  
export PATH=$PATH:/usr/bin/gfx

# add node
export PATH=$PATH:/usr/bin/node:/usr/bin/npm:/usr/bin/X11/npm
 
# clear the screen
alias c='clear' 

# move out the directory
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# reboot
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

export INCLUDE_DIR=$INCLUDE_DIR:/usr/include/

export Blitz_INCLUDE_DIR=/usr

# add plstm
export PATH=$PATH:~/Tools/friclib_temporal/friclib/parallel_lstm/

