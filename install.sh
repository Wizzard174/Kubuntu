#!/bin/bash
sudo apt-get install lightdm lightdm-gtk-greeter rofi polybar kitty
cp -r .config ~/.config
cp -r Wallpaper ~/Obrázky
cp .vimrc ~/.vimrc
cp .xprofile ~/.xprofile
cp .icons ~/.icons
sudo cp -r icons/* /usr/share/icons
sudo cp -r lightdm/* /etc/lightdm
