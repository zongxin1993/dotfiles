#!/bin/bash

sudo apt-get install -y \
  ninja-build \
  gettext \
  libtool \
  libtool-bin \
  autoconf \
  automake \
  cmake \
  g++ \
  pkg-config \
  unzip \
  curl \
  doxygen \
  xsel \
  ripgrep

#git clone https://github.com/neovim/neovim.git --depth 1 -b v0.10.0 && \
#cd neovim && \
#make CMAKE_BUILD_TYPE=RelWithDebInfo -j && \
#sudo make install

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

pip3 install neovim

git clone https://github.com/zongxin1993/zvim.git /home/zongxin/.config/nvim --depth 1
