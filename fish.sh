#!/bin/bash
function ask() {
    read -p "$1 [Y/n]: "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        n|no) echo "no" ;;
        *)     echo "yes" ;;
    esac
}

read -p "Install fish through distro repositories first! [Enter or ^C]"

if [[ "yes" == $(ask "Edit user config?") ]]
then
    cp -r fish/ ~/.config/
fi

if [[ "yes" == $(ask "Install OMF?") ]]
then
    curl -L https://get.oh-my.fish | fish
fi

echo "Done. Install thefuck through repositories and then run 'omf install thefuck'"
