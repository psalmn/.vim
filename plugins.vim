call plug#begin('~/.vim/.plug')

" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yegappan/mru'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'vim-scripts/peaksea', { 'do': 'cp colors/peaksea.vim ~/.vim/colors/peaksea.vim' }

call plug#end()
