"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


" General
set nocompatible		" iMproved version required
filetype off 			" required
set number


call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'chrisbra/vim-autosave'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


" Plugging setup
colorscheme gruvbox
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
autocmd VimEnter * NERDTree | wincmd p


set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 
set shiftwidth=4
set expandtab
set smartindent
syntax on

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" auto-save timer in ms





