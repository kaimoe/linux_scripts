#!/bin/bash
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo "set number
set mouse=a" >> ~/.vimrc

echo "Vim config complete."
