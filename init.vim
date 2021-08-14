"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


" General
set nocompatible		" iMproved version required
filetype off 			" required
set number


call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'

call plug#end()


" Plugging setup
colorscheme gruvbox
