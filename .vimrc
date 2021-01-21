if (has("termguicolors"))
	set termguicolors
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
let g:vimwiki_list = [{'path': '~/Documents/Scripts/vimwiki/',
		      \ 'syntax': 'markdown', 'ext': '.md'}]

set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

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
map <C-W>% :sp<CR>
map <C-W>" :vsp<CR>

" shows current mode
set showmode

" disable preview
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1

" Maintain undo history between sessions
set undofile
set undodir=~/.vim/undodir
" number of lines to save for undo
set undoreload=70

" don't connect to clipboard
" set clipboard=exclude:.*
" set clipboard=unnamedplus

" copy to system clipboard with ctrl-c, paste with ctrl-v
:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d

" map fzf file finder to 'C-m'
map <Leader>f :Files<cr>

" H moves to the first non-blank character of the line
" L moves to the last non-blank character of the line
nnoremap H ^
nnoremap L g_

" map \ + space to clear selection
nnoremap <Leader><Space> :noh<CR>

" tab change binds
" map <C-left> :tabp<CR>
" map <C-right> :tabn<CR>

nmap <Left> gT
nmap <Right> gt

map <C-t> :tabnew<CR>:Files<CR>

" Create new tab with no name
map <Leader>tt :tabedit<CR>
" Create new tab with a file for editing
" Since there's no <CR> it allows you to specify a filename.
" The name of a new file to create or an existing one.
map <Leader>te :tabnew<cr>:Files<cr>
" Close all tabs but the active one
map <Leader>to :tabonly<CR>
map <Leader>tq :wqa<CR>

" set spell spelllang=en_us,pt
" autocmd FileType markdown setlocal spell

map <Leader>se :setlocal spell! spelllang=en_us<CR>
map <Leader>sp :setlocal spell! spelllang=pt<CR>
nmap <F9> z=
imap <F10> <c-g>u<Esc>[s1z=`]a<c-g>u

" LaTeX (rubber) macro for compiling
nnoremap <leader>lc :w<CR>:vertical terminal make<CR>

" View PDF macro; '%:r' is current file's root (base) name.
nnoremap <leader>lv :!okular main.pdf 2> /dev/null &<CR><CR>

let g:vimtex_fold_enabled = 1
let g:tex_flavor = 'latex'

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
" let g:ale_lint_on_enter = 0

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1

" SuperTab conf
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"
