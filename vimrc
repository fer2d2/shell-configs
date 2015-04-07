" gets rid of all the crap that Vim does to be vi compatible
set nocompatible

"""""""""""""
" NeoBundle "
"""""""""""""
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

"""""""""""""""""""""
" NeoBundle plugins "
"""""""""""""""""""""
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'groenewege/vim-less'
NeoBundle 'tpope/vim-surround'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'edkolev/tmuxline.vim'
" end NeoBundle load
call neobundle#end()
" check for updates
NeoBundleCheck " Check for updates

""""""""""""""""
" Key Mappings "
""""""""""""""""

" use ii as esc (binding), normal and visual modes
inoremap ii <Esc>
vnoremap ii <Esc>

" add map from ñ to 
nmap ñ :

" set leader to comma
let mapleader=","

" add save-as-sudo map
noremap <Leader>W :w !sudo tee % > /dev/null

" remap 0 to first non-blank character
map 0 ^

" use F4 for go to next buffer
nnoremap  <silent>   <F4>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>

" smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" disable arrow keys - this is vim!
" normal mode
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
" insert mode
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
" visual mode
vnoremap <up>    <nop>
vnoremap <down>  <nop>
vnoremap <left>  <nop>
vnoremap <right> <nop>

" nerdtree binding
map <F2> :NERDTreeToggle<CR>

"""""""""""
" Configs "
"""""""""""

" disable filetype detection and add support for
" filetype plugins
filetype off
filetype plugin indent on

" enable syntax and filetype indent
syntax on

" ignore case on search
set ignorecase
set smartcase

" show matches on search
set showmatch

" autoindent
set autoindent

" show line numbers
set number

" enable mouse
set mouse=a

" enable color scheme
let &t_Co=256 " 256 colors
set cursorline
let g:kolor_italic=1 " enable italic. default: 1
let g:kolor_bold=1 " Enable bold. Default: 1
let g:kolor_underlined=0 " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=0 " Gray 'MatchParen' color. Default: 0
colorscheme kolor 
" colorscheme molokai 
" let g:rehash256 = 1

" set the indent lines color
let g:indentLine_color_term = 239

" configure airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

" use spaces instead tabs
set expandtab
set tabstop=4
set shiftwidth=4
retab

" set clipboard 
set clipboard=unnamedplus

" Turn backup off, since most stuff is in SVN, git etc anyway...
set nobackup
set nowb
set noswapfile
