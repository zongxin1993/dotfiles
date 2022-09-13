#!/bin/bash

sudo apt install tmux -y

cd /home/zongxin
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# Tmux save
cd .tmux
git clone https://github.com/tmux-plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-continuum

sed -i '34i\set -g @continuum-restore "on" \n run-shell ~/.tmux/tmux-continuum/continuum.tmux \n run-shell ~/.tmux/tmux-resurrect/resurrect.tmux \n set -g @plugin "tmux-plugins/tmux-resurrect" \n set -g @plugin "tmux-plugins/tmux-continuum" \n'  /home/zongxin/.tmux.conf

cd /home/zongxin