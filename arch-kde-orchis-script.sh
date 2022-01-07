cwd=$(pwd)
sudo pacman -Syu
sudo pacman -S --needed git base-devel gtk-engine-murrine sassc kvantum-qt5 curl jq
git clone https://aur.archlinux.org/yay.git
git clone https://github.com/vinceliuice/Orchis-kde.git
git clone https://github.com/vinceliuice/Orchis-theme.git
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
git clone https://github.com/vinceliuice/Vimix-cursors.git
git clone https://github.com/wsdfhjxc/virtual-desktop-bar.git
cd $cwd/yay/
makepkg -si --needed
cd $cwd/Orchis-kde/
./install.sh
cd $cwd/Orchis-theme/
./install.sh
cd $cwd/Tela-circle-icon-theme/
./install.sh -a
cd $cwd/Vimix-cursors/
./install.sh
cd $cwd/kde-setup-02
cp -R wallpapers/ ~/Pictures/
mv fonts/ .fonts/
cp -R .fonts/ ~/
cd $cwd/Orchis-kde/sddm
sudo ./install.sh
cd $cwd/virtual-desktop-bar/scripts/
./install-dependencies-arch.sh
./install-applet.sh
yay -S brave-bin latte-dock-git kdeconnect visual-studio-code-bin
mkdir -p ~/.config/plasmaConfSaver/
cp -rH $cwd/kde-completed/ ~/.config/plasmaConfSaver/
cd ~
rm -rf $cwd
