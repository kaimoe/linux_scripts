#!/bin/bash
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sed -i 's/vnoremap \$/"vnoremap \$/g' ~/.vim_runtime/vimrcs/extended.vim
sed -i 's/inoremap \$/"inoremap \$/g' ~/.vim_runtime/vimrcs/extended.vim

echo "set number
set mouse=a" >> ~/.vimrc

echo "Vim config complete."
