set magic | "Cos magic! (well, for regex)
set autoread
set listchars=tab:▷\ ,
set number
set so=8 | "8 lines up/down
set ruler
set showmatch | set mat=2 | "Match brackets, blink 0.2s
set hid | "Hide abandoned buffers
set history=1000
set lazyredraw

filetype plugin on | filetype indent on

syntax enable | "Syntax highlighting
set background=dark
colorscheme desert | "with a horse with no name
colorscheme peaksea

" Indentation
set smarttab | set expandtab | set shiftwidth=4 | set tabstop=4
set ai | "Auto indent
set si | "Smart indent
set wrap | "Wrap lines
set lbr | set tw=200 | "Linebreak at 500 characters

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

" sudo save
command W w !sudo tee % > /dev/null

" Undo++, across sessions
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry
set backspace=eol,start,indent | set whichwrap+=<,>,h,l

so ~/.vim/plugins.vim

" so ~/.vim/include/basic.vim
" so ~/.vim/include/extended.vim

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


set wildmenu
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Disable scrollbars
set guioptions-=l | set guioptions-=L | set guioptions-=r | set guioptions-=R

set ffs=unix,dos,mac | "Standard file types
let $LANG='en' | set encoding=utf8
set langmenu=en | source $VIMRUNTIME/delmenu.vim | source $VIMRUNTIME/menu.vim

set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T | set guioptions-=e
    set t_Co=256 | set guitablabel=%M\ %t
endif
