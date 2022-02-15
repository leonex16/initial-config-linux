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
sleep 3s &&
sudo pacman -Syyu -y &&
sudo pacman -S base-devel neofetch git zip unzip unrar alacritty xclip ttf-cascadia-code -y &&

# Neovim Setup
log 'Main Packages' &&
sudo pacman -S neovim &&
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Yay Setup
log 'Yay Setup' &&
sleep 3s &&
git clone https://aur.archlinux.org/yay.git && cd yay/ && makepkg -sic -y && cd .. && rm -rf yay/ &&

yay -Syuua -y &&

# Browsers
log 'Browsers' &&
sleep 3s &&
yay -S firefox-developer-edition google-chrome microsoft-edge-stable-bin -y &&

# Snap Setup
log 'Snap Setup' &&
sleep 3s &&
yay -S snapd -y &&
sudo systemctl enable --now snapd.socket &&
sudo ln -s /var/lib/snapd/snap /snap &&

# Snap Packages
log 'Snap Packages' &&
sleep 3s &&
sudo snap install code --classic &&
sudo snap install postman &&

# Qtile Setup
log 'Qtile Setup' &&
sleep 3s &&
lspci -v | grep -A1 -e VGA -e 3D &&
sudo pacman -S xf86-video-intel xorg-server xorg-xinit xorg-apps picom feh dmenu qtile &&
echo "qtile start" > ~/.xinitrc &&

# LightDM Setup
log 'LightDM Setup' &&
sleep 3s &&
sudo pacmas -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings &&
sudo systemctl enable lightdm.service &&

# Oh My Zsh Step
log 'Oh My Zsh Step' &&
sleep 3s &&
sudo pacman -S zsh nodejs npm -y &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
sudo npm install --global pure-prompt &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting &&
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions &&
mv -f ./.zshrc ~ &&
sudo chsh -s /bin/zsh &&