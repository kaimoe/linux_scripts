#!/bin/bash
function ask() {
    read -p "$1 [Y/n]: "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        n|no) echo "no" ;;
        *)     echo "yes" ;;
    esac
}

if [[ "yes" == $(ask "Install Ultimate vimrc?") ]]
then
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
fi

if [[ "yes" == $(ask "Remove auto-pairs ({},[], etc)?") ]]
then
    sed -i 's/vnoremap \$/"vnoremap \$/g' ~/.vim_runtime/vimrcs/extended.vim
    sed -i 's/inoremap \$/"inoremap \$/g' ~/.vim_runtime/vimrcs/extended.vim
    echo "let b:autopairs_enabled=0" >> ~/.vimrc
fi

echo "set number
set mouse=a" >> ~/.vimrc

echo "Done."
