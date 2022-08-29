#!bin/bash
sudo apt-get install lightdm lightdm-gtk-greeter rofi polybar kitty
mv -r .config ~/.config
mv -r Wallpaper ~/Obrázky
mv .vimrc ~/.vimrc
mv .xprofile ~/.xprofile
mv .icons ~/.icons
sudo mv icons /usr/share
sudo mv lightdm /etc
