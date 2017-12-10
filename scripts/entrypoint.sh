#!/bin/bash
set -e

ln -s /home/vim/.vim/.vimrc /home/vim/.vimrc
vim +PlugInstall +qall
