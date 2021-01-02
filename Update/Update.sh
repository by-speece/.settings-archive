echo Pobieranie Aktualizacji
git pull 
cd ~/.settings/TheSamePackages
echo Uaktualnianie Pakietów
sh start.sh
cd ~/.settings/Install-Update
echo Czyszczenie systemu
sh clean.sh
echo Uaktualnianie Plików Statycznych
rm -rf ~/.bashrc
cp -rf ~/.settings/.bashrc 	~/
rm -rf ~/.nanorc
cp -rf ~/.settings/.nanorc	~/
rm -rf ~/.p10k.zsh
cp -rf ~/.settings/.p10k.zsh	~/
rm -rf ~/.zshrc
cp -rf ~/.settings/.zshrc	~/
rm -rf ~/.zshrc.zni
cp -rf ~/.settings/.zshrc.zni	~/
sudo gpasswd -a $USER input
echo Całe DE zostało uaktualnione
