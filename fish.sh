#!/bin/bash

read -p "Install fish through distro repositories first!"

if [ "yes" == $(ask_yes_or_no "Edit user config?")]
then
    cp -r fish/ ~/.config/
fi

if [ "yes" == $(ask_yes_or_no "Install OMF?")]
then
    curl -L https://get.oh-my.fish | fish
fi

echo "Done. Install thefuck through repositories and then run 'omf install thefuck'"
