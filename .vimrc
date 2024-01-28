" if (has("termguicolors"))
"     set termguicolors
" endif

if !has('nvim')
	set ttymouse=xterm2
	tnoremap <Esc> <C-\><C-n>
endif

" Enable 256 colors
set t_Co=256

syntax on
filetype plugin indent on

set encoding=utf-8

" FZF path installed using git
set rtp+=~/.fzf

" Better syntax highlighting performance
set synmaxcol=0
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

let g:NERDAltDelims_c = 1
" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" prefer to use markdown files in vimwiki
let g:vimwiki_list = [{
	\ 'path': '$VIMWIKI',
	\ 'template_path': '$VIMWIKI/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '$VIMWIKI/site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]

" Turn on folding
let g:vimwiki_folding = 'expr'

" Open files with 2 or higher headers folded
set foldlevel=4

" open nerdtree with ctrl + s
nnoremap <C-s> :NERDTreeToggle<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set absolute numbers, disable relative numbers
set nu
set nornu
map <C-n> :set rnu!<CR>

"" font and themes
" set guifont=Hack
colorscheme nord
" colorscheme onedark

" dont show bottom status bar
set laststatus=0
" Case insensitive search
set ic
" Higlhight search
set hls
" Wrap text instead of being on one line
set lbr

" vim-wiki
set nocompatible

" vim sensible stuff
set complete-=i
set smarttab

" indentation
set autoindent
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch

" Switch to previous openned file
map <c-f> :e#<cr>

" bind to switch between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Split panels
map <C-W>" :sp<CR>
map <C-W>% :vsp<CR>

" shows current mode
set showmode

" copy to system clipboard with ctrl-c, paste with ctrl-v
:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d

" danish keyboard leader
let mapleader = "½"

" map fzf file finder to 'C-m'
map <Leader>p :Files<cr>

" H moves to the first non-blank character of the line
" L moves to the last non-blank character of the line
" nnoremap H ^
" nnoremap L g_

" map \ + space to clear selection
nnoremap <Leader><Space> :noh<CR>

" tab change binds
" map <C-left> :tabp<CR>
" map <C-right> :tabn<CR>

nnoremap H gT
nnoremap L gt

map <C-r> :redo<CR>

" map <C-t> :tabnew<CR>:Files<CR>
" map <C-t> :tabnew<CR>

" Create new tab with no name
map <Leader>tt :tabedit<CR>
" Create new tab with a file for editing
" Since there's no <CR> it allows you to specify a filename.
" The name of a new file to create or an existing one.
map <Leader>te :tabnew<cr>:Files<cr>
" Close all tabs but the active one
map <Leader>to :tabonly<CR>
map <Leader>tq :qa!<CR>
map <Leader>c :q!<CR>

map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

let g:vim_tags_auto_generate = 1
let g:vim_tags_use_language_field = 1

if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undodir  "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif
