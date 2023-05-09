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

git clone https://github.com/neovim/neovim.git --depth 1 -b v0.9.0 && \
cd neovim && \
make CMAKE_BUILD_TYPE=RelWithDebInfo -j && \
sudo make install 

pip3 install neovim

git clone https://github.com/zongxin1993/nvim-config.git /home/zongxin/.config/nvim --depth 1
