" tabs and indents
set tabstop=2
set smarttab
set shiftwidth=2
set smartindent
set autoindent
set expandtab

" misc stuff
set backspace=start,indent
set number
set nocompatible
filetype plugin indent on
autocmd FileType make set noexpandtab

" colors
colorscheme ir_black
syntax on
set hlsearch


" status line
set showcmd
set ruler
set ch=2 " make command taller

" Insert New Line
" *************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert
mode
map <Enter> o<ESC>

" git-vim
set laststatus=2
set statusline=%{GitBranch()}
