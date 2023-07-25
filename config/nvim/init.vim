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
"  Plug 'preservim/vim-markdown'
  Plug 'fladson/vim-kitty'
  Plug 'hashivim/vim-terraform'
  Plug 'rhadley-recurly/vim-terragrunt'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-orgmode/orgmode'
call plug#end()

" terraform fmt/hclfmt on save
let g:terraform_fmt_on_save=1
let g:hcl_fmt_autosave = 1

"orgmode
lua << EOF
require('orgmode').setup_ts_grammar()

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'},
}

require('orgmode').setup({
  org_agenda_files = {'~/org/*'},
  org_default_notes_file = '~/org/refile.org',
})

EOF
