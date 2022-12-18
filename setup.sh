sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit network-manager-applet xorg-x11-drv-libinput mesa-dri-drivers xfce4-panel xfce4-datetime-plugin xfce4-session xfce4-settings xfce4-terminal xfconf xfdesktop xfce4-appfinder xfce4-power-manager xfce4-pulseaudio-plugin pipewire pipewire-pulseaudio gvfs lightdm-gtk xfwm4 xdg-user-dirs materia-gtk-theme papirus-icon-theme git curl

sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-beta.s3.brave.com/x86_64/

sudo rpm --import https://brave-browser-rpm-beta.s3.brave.com/brave-core-nightly.asc

sudo dnf install brave-browser-beta

mkdir euv

cd euv

git clone https://github.com/bayasdev/envycontrol.git

cd envycontrol

sudo python envycontrol.py -s integrated

cd

rm -rf euv

echo "reboot now"
