#!/bin/bash
read -p "Install kitty first! [Enter or ^C]"
function ask() {
    read -p "$1 [Y/n]: "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        n|no) echo "no" ;;
        *)     echo "yes" ;;
    esac
}

if [[ "yes" == $(ask "Install custom config (mine.conf)?") ]]
then
    cp -r kitty ~/.config/
    echo "include mine.conf" >> ~/.config/kitty/kitty.conf
fi

if [[ "yes" == $(ask "Install theme?") ]]
then
    ln -s ~/.config/kitty/kitty-themes/themes/Japanesque.conf ~/.config/kitty/theme.conf
    echo "include theme.conf" >> ~/.config/kitty/kitty.conf
fi

echo "Done."
