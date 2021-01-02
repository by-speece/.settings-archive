pacman -Syu diffutils dosfstools gptfdisk grub mc ntfs-3g ntp openssh parted gparted rsync sudo usbutils nano wget udftools
cp -rf files/locale.gen	/etc/
locale-gen
cp -rf files/locale.conf	/etc/
cp -rf files/vconsole.conf	/etc/
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
hwclock --systohc --utc 
nano /etc/hostname
nano /etc/hosts
cp -rf files/pacman.conf	/etc/
pacman -Syu xorg-server xf86-input-evdev xf86-video-vesa xorg-xinit xorg-apps net-tools networkmanager network-manager-applet cups bluez bluez-utils alsa-firmware alsa-lib alsa-plugins alsa-utils pulseaudio pulseaudio-alsa cups cups-pdf nmap avahi gutenprint foomatic-db-gutenprint-ppds grub efibootmgr os-prober  libcanberra libcanberra-pulse pulseaudio-bluetooth
systemctl enable NetworkManager cups bluetooth avahi-daemon.service 


