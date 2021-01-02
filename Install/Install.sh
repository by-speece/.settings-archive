sudo rfkill unblock all
sudo pacman -Syu papirus-icon-theme curl wget libreoffice-fresh libreoffice-fresh-pl gedit repose zsh chromium mpv youtube-dl discord calibre audacity screenkey obs-studio scribus krita rawtherapee htop gtop adapta-gtk-theme syncthing syncthing-gtk rhythmbox blueman bluez pavucontrol nautilus keepassxc dunst gnome-screenshot udiskie feh alacritty i3-gaps neofetch htop gtop inkscape gimp xdotool light ttf-bitstream-vera ttf-croscore ttf-dejavu gnu-free-fonts adobe-source-han-sans-jp-fonts  adobe-source-han-serif-jp-fonts otf-ipafont ttf-hanazono ranger 
cd ~
git clone https://aur.archlinux.org/yay.git 
cd yay 
makepkg -si
cd ~/ArchInstall/Workflow/
yay -S polybar github-desktop-bin typora brother-dcpj315w brscan3 clipit cava i3lock-color libinput-gestures ly picom-git pyinstaller rofi-bluetooth-git rtl8821ce-dkms-git siji-git teams termsyn-font ttf-material-icons-git ttf-ms-fonts waifu2x-ncnn-vulkan-git wd719x-firmware xava-git
sudo systemctl enable ly 
sudo cp -rf etc /
mkdir ~/.config
cp -rf home/speece/.settings /home/speece/
rm -rf ~/.config/dunst
ln -s ~/.settings/.config/dunst		~/.config/
rm -rf ~/.config/i3
ln -s ~/.settings/.config/i3		~/.config/
rm -rf ~/.config/mpv
ln -s ~/.settings/.config/mpv		~/.config/
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
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
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
rm -rf ~/.config/alacritty
cp -rf ~/.settings/.config/alacritty	~/.config/
sudo chmod +s /usr/bin/light
