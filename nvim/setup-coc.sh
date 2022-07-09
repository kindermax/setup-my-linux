#! /bin/bash
volta install yarn
cd /home/max/.local/share/nvim/plugged/coc.nvim/
yarn install && yarn build
