#!/bin/bash

read -p "Install fish through distro repositories first!"

cp -r fish/ ~/.config/
curl -L https://get.oh-my.fish | fish

echo "Fish files copied and OMF installed. Install thefuck through repositories and then run 'omf install thefuck'"
