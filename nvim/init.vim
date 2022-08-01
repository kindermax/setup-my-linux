:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview " For No Previews

" Minimap
let g:minimap_auto_start=1
" Plugins section
call plug#begin()

" themes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" themes end

" Try these plugins
"Plug 'jiangmiao/auto-pairs'
"
Plug 'wfxr/minimap.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/udalov/kotlin-vim'

Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/github/copilot.vim' " github copilot

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

:colorscheme tokyonight

" Mappings section
let mapleader = "\<Space>"
" nerdtree
nnoremap <Leader>t :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Lines<CR>
" no highlight
map <Leader>h :noh<CR>
" autocomplete
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" Close file
nnoremap <C-q> :q<CR>
" Buffers
nnoremap <Leader>b :Buffers<CR>
