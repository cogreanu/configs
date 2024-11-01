let mapleader=" "
let maplocalleader=" "

" Plugin Section
call plug#begin("~/.config/nvim/plugged")
 Plug 'junegunn/vim-easy-align' 
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'preservim/nerdtree'
 Plug 'plasticboy/vim-markdown'
 Plug 'neoclide/coc.nvim', { 'branch': 'release' }
 Plug 'airblade/vim-gitgutter'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'tpope/vim-surround'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


" Remaps
inoremap jj <Esc>
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" use display lines by default
noremap j gj
noremap k gk

" very magic search
nnoremap / /\v
cnoremap %s/ %s/\v
nnoremap <leader>r :%s/\v
nnoremap <leader>c *Ncgn

" NERDTree
nmap <leader>t :NERDTreeToggle<CR>

" remove highlight
nnoremap <leader><space> :set hlsearch!<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe' " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif 

" Misc config
colorscheme catppuccin-mocha
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set linebreak               " wrap on word boundaries only
set cc=120                  " set an 120 column border for good coding style
set mouse=a                 " enable mouse click
set t_Co=256                " 256 colors on terminal
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set nofoldenable            " disable folding
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set backupdir=~/.cache/vim " Directory to store backup files.n
set scrolloff=5             " spacing between cursor and margin
