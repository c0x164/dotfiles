echo "Hello"

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ..

yay -S pamixer thorium-browser-bin telegram-desktop-bin stacer-bin blueman picom-ftlabs-git flameshot thunar-volman gvfs thunar neofetch nvidia polybar feh dunst rofi alacritty iwd lxappearance xarchiver noto-fonts nvidia-settings envycontrol prismlauncher-qt5-bin spotify

mkdir -p /home/c0x164/.config

mkdir -p /home/c0x164/.themes

mkdir -p /home/c0x164/.icons

mkdir -p /home/c0x164/.fonts

cp -r config/* /home/c0x164/.config/

cp -r fonts/* /home/c0x164/.fonts/

cp -r themes/* /home/c0x164/.themes/

cp -r icons/* /home/c0x164/.icons/

echo "installed"
