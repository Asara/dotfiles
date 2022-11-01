" Asara's neovim config

" enable syntax highlighting
syntax enable
set number
set cursorline
filetype plugin indent on
set lazyredraw
set showmatch
set hlsearch
set incsearch

" `\ ` will remove search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" remape jk to escape
inoremap jk <esc>

" highlight extra whitespace
:hi ExtraWhitespace ctermbg=blue
:match ExtraWhitespace /\s\+$\| \+\ze\t/

" set status line colors since my theme doesn't set them
:hi StatusLine ctermbg=grey ctermfg=black

" limit viminfo line memory
set viminfo='100,<1000,s100,h

" enable some plugins
call plug#begin('~/.vim/plugged')
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'fladson/vim-kitty'
  Plug 'hashivim/vim-terraform'
  Plug 'rhadley-recurly/vim-terragrunt'
call plug#end()

" terraform fmt/hclfmt on save
let g:terraform_fmt_on_save=1
let g:hcl_fmt_autosave = 1
