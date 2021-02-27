read -p "Install kitty first!"

cp -r kitty ~/.config/
echo "include mine.conf
include theme.conf" >> ~/.config/kitty/kitty.conf

ln -s ~/.config/kitty/kitty-themes/themes/Japanesque.conf ~/.config/kitty/theme.conf

echo "Kitty config applied."
