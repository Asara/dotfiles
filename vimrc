syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


set number
set cursorline

filetype indent on
set lazyredraw

set showmatch

set hlsearch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>

inoremap jk <esc>

colorscheme elflord


set colorcolumn=81
:hi ColorColumn ctermbg=blue

:hi ExtraWhitespace ctermbg=blue
:match ExtraWhitespace /\s\+$\| \+\ze\t/
