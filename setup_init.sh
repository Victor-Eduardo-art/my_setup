#!/bin/bash
# .config/kitty
# .config/nvim
# .bashrc

# update repo and upgrade all softwares
 sudo apt update && sudo apt upgrade -y

# install all softwares
 sudo apt install nodejs -y
 curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
 sudo apt install code

# config
 # kitty - add kitty on desktop
   ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
   cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
   cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
   sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
   sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
   echo 'kitty.desktop' > ~/.config/xdg-terminals.list
 
 # .bashrc config
   cp .bashrc ~/

 # kitty file configuretion
   cp kitty/current-theme.conf .config/kitty/
   cp kitty/kitty.conf .config/kitty/
   cp kitty/logo.png .config/kitty/
   cp kitty/shadotheme.conf .config/kitty/

 # neovim config
   cp nvim/init.vim .config/nvim/
   cp nvim/autoload .config/nvim

# finish
 sudo rm -r kitty nvim  
 sudo rm .bashrc


