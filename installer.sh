echo "Hello"

yay -S pamixer thorium-browser-bin telegram-desktop-bin stacer-bin blueman picom-ftlabs-git flameshot thunar-volman gvfs thunar neofetch nvidia polybar feh dunst rofi kitty iwd xarchiver noto-fonts nvidia-settings envycontrol brightnessctl zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

mkdir -p /home/c0x164/.config

mkdir -p /home/c0x164/.themes

mkdir -p /home/c0x164/.icons

mkdir -p /home/c0x164/.fonts

cp -r .zshrc /home/c0x164/

cp -r config/* /home/c0x164/.config/

cp -r fonts/* /home/c0x164/.fonts/

cp -r themes/* /home/c0x164/.themes/

cp -r icons/* /home/c0x164/.icons/

echo "installed"
