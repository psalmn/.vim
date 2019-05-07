set ffs=unix,dos,mac | "Standard file types
let $LANG='en' | set encoding=utf-8 | scriptencoding utf-8
set langmenu=en | source $VIMRUNTIME/delmenu.vim | source $VIMRUNTIME/menu.vim

set magic | "Cos magic! (well, for regex)
set autoread
set listchars=tab:▷\ ,
set so=8 | "8 lines up/down
set number | set ruler
set history=1000
set showmatch | set mat=2 | "Match brackets, blink 0.2s
set hid | "Hide abandoned buffers
set lazyredraw

filetype plugin on | filetype indent on
set omnifunc=syntaxcomplete#Complete

syntax enable | "Syntax highlighting
set background=dark
colorscheme desert | "with a horse with no name
colorscheme peaksea

" Indentation
set autoindent | set smartindent
set smarttab | set expandtab | set shiftwidth=4 | set tabstop=4
set linebreak | set textwidth=200 
set wrap | set whichwrap+=<,>,h,l
set backspace=eol,start,indent

set hlsearch | set ignorecase | set smartcase | set incsearch | "Search

" Follow the leader!
let mapleader = ","

nmap <leader>w :w!<cr>
nmap <silent> <leader><cr> :noh<cr>
" Scratch buffers
nmap <leader>zz :e ~/zbuffer<cr>
nmap <leader>zx :e ~/zbuffer.md<cr>

" Tab stuff
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove
nmap <leader>t<leader> :tabnext

" Split buffer navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
set splitbelow | set splitright

" sudo save
command W w !sudo tee % > /dev/null

" Undo++, across sessions
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

so ~/.vim/plugins.vim

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set wildmenu
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Disable scrollbars
set guioptions-=l | set guioptions-=L | set guioptions-=r | set guioptions-=R

set gfn=Consolas\ 12,IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T | set guioptions-=e
    set t_Co=256 | set guitablabel=%M\ %t
endif
