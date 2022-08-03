#!/bin/bash
sudo pacman -S rofi nitrogen dunst zsh sxhkd bspwm polybar curl lightdm xorg xorg-xinit lightshot xfce4-terminal firefox
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S picom-ibhagwan-git lightdm-webkit2-greeter lightdm-webkit2-theme-reactive betterlockscreen
cd ~/.config
git clone https://github.com/MihajloVelickovic/dotFiles .
rm .gitattributes
mv .xinitrc ~
mv .zshrc ~
sudo mv lightdm.conf /etc/lightdm/
cd ..
ln -sf .xinitrc .xsession



