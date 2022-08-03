#!/bin/bash
sudo pacman -S --noconfirm ranger pulseaudio alsa-utils pacman-contrib rofi nitrogen dunst zsh sxhkd bspwm polybar curl lightdm xf86-video-qxl xorg xorg-xinit flameshot xfce4-terminal firefox
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
yay -S --noconfirm picom-ibhagwan-git lightdm-webkit2-greeter lightdm-webkit2-theme-reactive betterlockscreen nerd-fonts-complete noto-fonts-cjk ttf-ms-win11-auto
cd ~/.config
git clone https://github.com/MihajloVelickovic/dotFiles 
cd dotFiles
mv bspwm ..
mv sxhkd ..
mv picom ..
mv polybar ..
mv dunst ..
mv rofi ..
rm .gitattributes
mv .xinitrc ~
mv .zshrc ~
sudo mv lightdm.conf /etc/lightdm/
sudo mv lightdm-webkit2-greeter.conf /etc/lightdm
cd ..
ln -sf .xinitrc .xsession
cd ~
paccache -r
rm -rf .cache
yay -Sc --noconfirm
sudo pacman -Rns --noconfirm $(pacman -Qtdq)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



