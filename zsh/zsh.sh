#!/bin/sh

sudo apt-get update -qq
sudo apt-get install zsh -y

chsh -s "$(which zsh)"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1  https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

sudo mkdir -p /usr/share/fonts/truetype/nerd-fonts/
cd /usr/share/fonts/truetype/nerd-fonts/
sudo wget -q https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf

sudo fc-cache -f
