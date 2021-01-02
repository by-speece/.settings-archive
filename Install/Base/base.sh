pacman -Syu diffutils dosfstools gptfdisk grub mc ntfs-3g ntp openssh parted gparted rsync sudo usbutils nano wget udftools
nano /etc/locale.gen
locale-gen
nano /etc/locale.conf 
nano /etc/vconsole.conf
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
hwclock --systohc --utc 
nano /etc/hostname
nano /etc/hosts
nano /etc/pacman.conf
pacman -Syu xorg-server xf86-input-evdev xf86-video-vesa xorg-xinit xorg-apps net-tools networkmanager network-manager-applet cups bluez bluez-utils 
systemctl enable NetworkManager cups bluetooth
pacman -Syu alsa-firmware alsa-lib alsa-plugins alsa-utils pulseaudio pulseaudio-alsa libcanberra libcanberra-pulse pulseaudio-bluetooth
sudo pacman -Syu cups cups-pdf nmap avahi gutenprint foomatic-db-gutenprint-ppds grub efibootmgr os-prober 
sudo systemctl enable avahi-deamon.service 

