#! /usr/bin/env zsh
source ~/.zshrc

TARGET_FOLDER=~/Tools/dotfiles 

rsync-copy ~/.zshrc ${TARGET_FOLDER}/zshrc 
rsync-copy ~/.tmux.conf ${TARGET_FOLDER}/tmux.conf 
rsync-copy ~/.zpreztorc ${TARGET_FOLDER}/zpreztorc
rsync-copy ~/.vimrc ${TARGET_FOLDER}/vimrc
rsync-copy ~/Tools/vim_templates ${TARGET_FOLDER}
rsync-copy ~/.config/nvim/init.vim ${TARGET_FOLDER}/nvim/
