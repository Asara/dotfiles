#!/bin/bash

# download dejavu nerd-fonts
FONT_DIR=${HOME}/.local/share/fonts/
mkdir -p ${FONT_DIR}
wget -qO- https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.tar.xz | tar -Jxv -C ${FONT_DIR}
fc-cache -fv

git clone https://git.minhas.io/Asara/nvim ${HOME}/.config/nvim

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
