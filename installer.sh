#!/bin/bash
sudo pacman -S --noconfirm rofi nitrogen dunst zsh sxhkd bspwm polybar curl lightdm xf86-video-qxl xorg xorg-xinit flameshot xfce4-terminal firefox
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S --noconfirm picom-ibhagwan-git lightdm-webkit2-greeter lightdm-webkit2-theme-reactive betterlockscreen
cd ~/.config
git clone https://github.com/MihajloVelickovic/dotFiles 
cd dotFiles
mv bspwm ..
mv sxhkd..
mv picom ..
mv polybar ..
mv dunst ..
mv rofi ..
rm .gitattributes
mv .xinitrc ~
mv .zshrc ~
sudo mv lightdm.conf /etc/lightdm/
sudo mv lightdm-webkit2-greeter.conf
cd ..
ln -sf .xinitrc .xsession



