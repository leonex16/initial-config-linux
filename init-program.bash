#!/bin/zsh

function log() {
  message="$1"

  printf '=%.0s' {1..25}
  printf '\n%s\n' $message
  printf '=%.0s' {1..25}
  printf '\n\n'
}

# Main Packages
log 'Main Packages' &&
sleep 5s &&
sudo pacman -Syyu -y &&
sudo pacman -S base-devel neofetch git zip unzip unrar terminator xclip ttf-cascadia-code -y &&

# Neovim Setup
log 'Setup Neovim' &&
sudo pacman -S neovim &&
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&

# Yay Setup
log 'Yay Setup' &&
sleep 5s &&
git clone https://aur.archlinux.org/yay.git && 
cd yay/ && 
makepkg -sic -y &&
cd .. &&
rm -rf yay/ &&
yay -Syuua -y &&

# Browsers
log 'Browsers' &&
sleep 5s &&
yay -S firefox-developer-edition google-chrome google-chrome-dev -y &&

# Input Mapper Setup
log 'Input Mapper' &&
sleep 5s &&
yay -S input-remapper-git -y &&

# Ulauncher Setup
log 'Input Mapper' &&
sleep 5s &&
yay -S ulauncher -y &&

# Run js Setup
log 'Runjs' &&
sleep 5s &&
yay -S runjs-bin &&

# Postman Setup
log 'Postman' &&
sleep 5s &&
yay -S postman-bin &&

# Snap Setup
log 'Snap Setup' &&
sleep 5s &&
yay -S snapd -y &&
sudo systemctl enable --now snapd.socket &&
sudo ln -s /var/lib/snapd/snap /snap &&

# Snap Packages
log 'Snap Packages' &&
sleep 5s &&
sudo snap install code --classic &&
sudo snap install onlyoffice-desktopeditors flameshot &&

# Qtile Setup
log 'Qtile Setup' &&
sleep 5s &&
lspci -v | grep -A1 -e VGA -e 3D &&
sudo pacman -S xf86-video-intel xorg-server xorg-xinit xorg-apps picom dmenu qtile &&
echo "qtile start" > ~/.xinitrc &&

# LightDM Setup
log 'LightDM Setup' &&
sleep 5s &&
sudo pacmas -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings &&
sudo systemctl enable lightdm.service &&

# NVM Setup
log 'NVM Setup' &&
yay -S nvm &&
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc &&
cp zsh/.zshrc ~/ &&
source ~/.zshrc &&
nvm install 18 &&

# ZSH Setup
log 'ZSH' &&
sleep 5s &&
yay -S zsh -y &&
mkdir ~/.zsh-plugins &&
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-plugins/powerlevel10k &&
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh-plugins/autocomplete &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-plugins/syntax-highlighting
sudo chsh -s /bin/zsh &&
chsh -s /bin/zsh