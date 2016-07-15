
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
# alias notebook='ipython notebook --pylab=inline'
alias notebook='ipython notebook'
alias zin='sudo zypper install'
alias zup='sudo zypper update'
alias zse='sudo zypper search'

# server
# write alias to the servers
alias iupr-serv4='.....INSERT.....'
alias sci='.....INSERT.....'
alias rhrk='.....INSERT.....'


# vim
alias vim='nvim'
alias ev='vim ~/.config/nvim/init.vim'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias ezp='vim ~/.zpreztorc'

# fzf
alias vo='vim $(fzf)'
#
# # source
alias sz='source ~/.zshrc'

. /home/federico/Tools/powerline/powerline/bindings/zsh/powerline.zsh

export LD_LIBRARY_PATH=/opt/OpenBLAS/lib/:$LD_LIBRARY_PATH

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
# export PATH=$PATH:/usr/local/bin/luarocks:/usr/local/etc/luarocks:/usr/local/lib/luarocks

# add gfx  
# export PATH=$PATH:/usr/bin/gfx

# add node
# export PATH=$PATH:/usr/bin/node:/usr/bin/npm:/usr/bin/X11/npm
 
# clear the screen
alias c='clear' 

# move out the directory
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# reboot
alias reboot='sudo /sbin/shutdown -r now'
alias shutdown='sudo /sbin/shutdown -P now'

export INCLUDE_DIR=$INCLUDE_DIR:/usr/include/

export Blitz_INCLUDE_DIR=/usr

export PATH=/home/federico/torch/install/bin:~/Tools/tmuxinator/bin:$PATH
export LD_LIBRARY_PATH=/home/federico/torch/install/lib:$LD_LIBRARY_PATH 
export DYLD_LIBRARY_PATH=/home/federico/torch/install/lib:$DYLD_LIBRARY_PATH

source ~/.bin/tmuxinator.zsh
 
# Mounting external drive
alias mounting_hd='sudo mount /dev/sdb5 /media/external_disk/'

export POWERLINE_CONFIG_COMMAND=/home/federico/Tools/powerline/build/scripts-2.7/powerline-config

# Fix solarize vim in TMUX
export TERM=screen-256color-bce
source ~/.fzf.zsh
