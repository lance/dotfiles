" tabs and indents
set tabstop=2
set smarttab
set shiftwidth=2
set smartindent
set autoindent
set expandtab

set ruler

" Searching behavior
set incsearch     " incremental search
set ignorecase    " ignore case in searches
set smartcase     " except when the search string includes uppercase
set hlsearch      " highlight search results

" Automatically write when changing buffers
set autowrite

" Auto-reload files when they have changed
set autoread

" default mapleader=\ but that's awkward, use comma
let mapleader = ','
let g:mapleader = ','


"Delete in normal mode to switch off highlighting till next search and clear messages...
nmap <silent> <BS> :nohlsearch <BAR> call Toggle_CursorColumn('off')<CR>

" Implement cursor toggle...
let g:cursorcolumn_visible = 0
function! Toggle_CursorColumn (requested_state)
   if a:requested_state == 'off' || g:cursorcolumn_visible && a:requested_state == 'flip'
        let g:cursorcolumn_visible = 0
        highlight clear CursorColumn
        highlight CursorColumn term=none cterm=none
    else
        let g:cursorcolumn_visible = 1
        highlight CursorColumn term=bold ctermfg=black ctermbg=cyan cterm=bold
    endif
endfunction


" NERDTree config
map <Leader>n :NERDTreeToggle<CR>
map <Leader>tb :cd ~/src/torquebox/torquebox<CR> :NERDTreeToggle<CR>

" file types that are ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript


" misc stuff
set backspace=start,indent
set number
set nocompatible
filetype plugin indent on
autocmd FileType make set noexpandtab

" status line & other info
set title
set showcmd
set ch=2 " make command taller

" Insert New Line
" *************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" auto-wrap single line of text to 72 cols with ==
" according to bobmcw it's reminiscent of elvis and 
" he loves it, and really I just want to make him happy
map == <S-V>gq
map === vapgq

" Other key mappings
" *************************************************************
"
" List file buffers
map <Leader>b :FufBuffer<Enter>

" Go to the top of the file
map <Leader>tt :0<Enter>

" requires git-vim plugin
set laststatus=2
set statusline=%{GitBranch()}

nnoremap <Space> <PageDown>

" Common code snippits. Just trying these out to see how I do with macros
" Add a new function
iab def def func<CR><CR>end<ESC>k

" add a new scenario
iab desc describe "a scenario" do<CR><CR>  it "should do something" do<CR><CR>end<CR><CR>end<ESC>0dw6k2w

" colors
syntax on
set background=dark
if has("gui_macvim")
  set background=light
  colorscheme solarized
else
  set background=dark
end


