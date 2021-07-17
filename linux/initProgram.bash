#!/bin/bash
sudo pacman -S base-devel neofetch git zip unzip unrar neovim nodejs npm -y &&
git clone https://aur.archlinux.org/yay.git &&
cd yay/ &&
makepkg -sic -y &&
cd .. &&
rm -rf yay/ &&
yay -Syuua -y &&
yay -S firefox-developer-edition google-chrome snapd font-victor-mono plank -y && 
sudo systemctl enable --now snapd.socket &&
sudo ln -s /var/lib/snapd/snap /snap &&
sudo snap install code --classic &&

echo 'NEOVIM' &&
mkdir ~/.config/nvim &&
mkdir ~/.local/share/nvim/plugged &&
cp ../vim/init.vim ~/.config/nvim/ &&
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &&

echo 'ZSH' &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
chsh -s /bin/zsh


