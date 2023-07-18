echo "Hello"

yay -S pamixer papirus-icon-theme 

git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders

sudo cp -r src/* /usr/share/icons/Papirus  

./papirus-folders -C cat-latte-teal --theme ePapirus

sudo reboot