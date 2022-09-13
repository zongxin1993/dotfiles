#!/bin/bash

set -e

while [ $# -gt 0 ]; do
  case $1 in
    --base-env) bash scripts/base-env.sh ;;
    --docker) bash scripts/docker.sh ;;
    --nvim) bash scripts/nvim.sh ;;
    --tmux) bash scripts/tmux.sh ;;
    --zsh) bash scripts/zsh.sh ;;
  esac
  shift
done
