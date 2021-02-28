read -p "Install kitty first!"

if [ "yes" == $(ask_yes_or_no "Install custom config (mine.conf)?")]
then
    cp -r kitty ~/.config/
    echo "include mine.conf" >> ~/.config/kitty/kitty.conf
fi

if [ "yes" == $(ask_yes_or_no "Install theme?")]
then
    ln -s ~/.config/kitty/kitty-themes/themes/Japanesque.conf ~/.config/kitty/theme.conf
    echo "include theme.conf" >> ~/.config/kitty/kitty.conf

echo "Done."
