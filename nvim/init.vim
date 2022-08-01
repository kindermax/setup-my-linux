:set nocompatible
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview " For No Previews
:set cc=80
:set showmatch

syntax on

"====== fzf.vim ==============================
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*__pycache__,
"=============================================


" Plugins section
call plug#begin()
"theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

:colorscheme tokyonight
"theme

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/udalov/kotlin-vim'

Plug 'https://github.com/github/copilot.vim' " github copilot
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Mappings section

let mapleader = "\<Space>"
" NERDTree
nnoremap <Leader>t :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Lines<CR>

map <Leader>h :noh<CR>
" Close file
nnoremap <C-q> :q<CR>

nnoremap <Leader>b :Buffers<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
