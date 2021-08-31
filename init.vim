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
Plug 'Townk/vim-autoclose'
Plug 'chrisbra/vim-autosave'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimsence/vimsence'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'dod': 'yarn install --frozen-lockfile'}
Plug 'amiralies/coc-discord'
Plug 'neoclide/coc-vetur'
Plug 'haishanh/coc-swagger'
Plug 'fannheyward/coc-sql'
Plug 'josa42/coc-sh'
Plug 'josa42/coc-go'
Plug 'neoclide/coc-html'
Plug 'neoclide/coc-python'
Plug 'neoclide/coc-json'
Plug 'neoclide/coc-java'
Plug 'neoclide/coc-html'
Plug 'neoclide/coc-css'
Plug 'voldikss/coc-cmake'
Plug 'clangd/coc-clangd'


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

let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'
