#!/bin/bash
read -p "Install fish through distro repositories first! [Enter or ^C]"
function ask() {
    read -p "$1 [Y/n]: "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        n|no) echo "no" ;;
        *)     echo "yes" ;;
    esac
}

if [[ "yes" == $(ask "Edit user config?") ]]
then
    cp -r _files/fish/ ~/.config/
    read -p "Shell hostname color: "
    sed -i "s/color_host:magenta/color_host:$color/g" ~/.config/fish/fish_variables
fi

if [[ "yes" == $(ask "Install OMF?") ]]
then
    curl -L https://get.oh-my.fish | fish
fi

if [[ "yes" == $(ask "Install theme? (requires OMF)") ]]
then
    fish -c "omf install boxfish && omf theme boxfish"
fi

echo "Done. Install thefuck through repositories and then run 'omf install thefuck'"
