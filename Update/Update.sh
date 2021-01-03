cd ~/.settings 
git push
git pull
cd ~/.settings/TheSamePackages
echo Uaktualnianie Pakietów
sh start.sh
cd ~/.settings/Update
echo Czyszczenie systemu
sh clean.sh
echo Uaktualnianie Plików Statycznych
rm ~/.config/gtk-3.0
ln -s ~/.settings/.config/gtk-3.0		~/.config/
rm -rf ~/.config/dunst
ln -s ~/.settings/.config/dunst		~/.config/
rm -rf ~/.config/i3
ln -s ~/.settings/.config/i3		~/.config/
rm -rf ~/.config/nautilus
ln -s ~/.settings/.config/nautilus	~/.config/
rm -rf ~/.config/polybar
ln -s ~/.settings/.config/polybar	~/.config/
rm -rf ~/.config/ranger
ln -s ~/.settings/.config/ranger	~/.config/
rm -rf ~/.config/rofi
ln -s ~/.settings/.config/rofi		~/.config/
rm -rf ~/.config/libinput-gestures.conf
ln -s ~/.settings/.config/libinput-gestures.conf	~/.config/libinput-gestures.conf
rm -rf ~/.config/picom.conf
ln -s ~/.settings/.config/picom.conf	~/.config/picom.conf
rm -rf ~/.bashrc
cp -rf ~/.settings/.bashrc		~/
rm -rf ~/.nanorc
cp -rf ~/.settings/.nanorc		~/
rm -rf ~/.p10k.zsh
cp -rf ~/.settings/.p10k.zsh		~/
rm -rf ~/.zshrc
cp -rf ~/.settings/.zshrc		~/
rm -rf ~/.zshrc.zni
cp -rf ~/.settings/.zshrc.zni		~/
sudo gpasswd -a $USER input
echo Całe DE zostało uaktualnione
echo Uaktualnianie Lockscreenu
betterlockscreen -u ~/.settings/.config/i3/wp/lockscreen.png
