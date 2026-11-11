syntax on

set fileformat=unix
set encoding=UTF-8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
set nowrap
set list
set listchars=eol:.,tab:>-,trail:~,extends:>,precedes:<

set cursorline
set number
set relativenumber
set scrolloff=8
set signcolumn=yes
set showcmd
set noshowmode
set conceallevel=1
set shortmess+=c
set formatoptions-=cro

set noerrorbells visualbell t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamedplus

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
" so ~/.vim/autoclose.vim  " replaced by coc-pairs

"-- COLOR & THEME CONFIG
" set termguicolors
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE


set laststatus=2
