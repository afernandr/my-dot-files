" hello front end masters
"set path+=**

" Nice menu when typing `:find *.py`
"set wildmode=longest,list,full
"set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

set exrc
set relativenumber
set nu
"set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

" Sane splits
set splitright
set splitbelow

" Permanent undo
set undodir=~/.vim/undodir
set undofile

" More space for displying messages
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'

" Telescope requirements
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" nvim cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" luasip as snippet engine of nvim cmp
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" lspkind
Plug 'onsails/lspkind-nvim'

" lspInstaller
Plug 'williamboman/nvim-lsp-installer'

" support for json with comments
Plug 'neoclide/jsonc.vim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1

let mapleader = " "
