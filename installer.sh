#!/bin/bash
rm .gitattributes
cd ~
sudo pacman -S --noconfirm ranger pulseaudio alsa-utils spotify discord pacman-contrib rofi nitrogen dunst zsh sxhkd bspwm polybar curl lightdm xf86-video-qxl xorg xorg-xinit flameshot xfce4-terminal firefox
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
yay -S --noconfirm picom-ibhagwan-git spotify-adblock lightdm-webkit2-greeter lightdm-webkit2-theme-reactive betterlockscreen nerd-fonts-complete noto-fonts-cjk ttf-ms-win11-auto
cd ~/.config
git clone https://github.com/MihajloVelickovic/dotFiles 
cd dotFiles
mv bspwm sxhkd picom polybar dunst rofi xfce4 ..
rm .gitattributes
mv .xinitrc .zshrc ~
sudo mv lightdm.conf lightdm-webkit2-greeter.conf /etc/lightdm/
sudo systemctl enable lightdm
cd ..
rm -rf dotFiles
ln -sf .xinitrc .xsession
cd ~
paccache -r
rm -rf .cache
yay -Sc --noconfirm
sudo pacman -Rns --noconfirm $(pacman -Qtdq)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
