" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" JavaScript linting
Plug 'dense-analysis/ale'

" Git integration
Plug 'tpope/vim-fugitive'

" Code completion
" TODO: Fix this
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Text alignment
Plug 'junegunn/vim-easy-align'

" Status bar
Plug 'itchyny/lightline.vim'

" GitHub dashboard
" TODO: Why don't links work?
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'preservim/nerdcommenter' 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Buffer management
Plug 'jeetsukumaran/vim-buffergator'

" Initialize plugin system
call plug#end()

let g:ale_sign_error = ''
let g:ale_sign_warning = ''

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Lightline config
set laststatus=2
let g:lightline = { 
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
			\ }

filetype plugin on

" Automatically write when changing buffers
set autowrite

" Auto-reload files when they have changed
set autoread

" default mapleader=\ but that's awkward, use comma
let mapleader = ','
let g:mapleader = ','

" NERDTree config
map <Leader>n :NERDTreeToggle<CR>

" misc stuff
set backspace=start,indent
set number

" Insert New Line
" *************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" auto-wrap single line of text to 72 cols with ==
" according to bobmcw it's reminiscent of elvis and
" he loves it, and really I just want to make him happy
map == <S-V>gq
map === vapgq

" tabs and indents
set tabstop=2
set smarttab
set shiftwidth=2
set smartindent
set autoindent
set expandtab

" Searching behavior
set incsearch     " incremental search
set ignorecase    " ignore case in searches
set smartcase     " except when the search string includes uppercase

