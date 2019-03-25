set nocompatible
filetype off

let mapleader=","
noremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


set autoindent
set cindent
set smartindent
set ruler
set shiftwidth=4
set number
set hlsearch
set smartcase
set tabstop=4
set incsearch
syntax on
set backspace=eol,start,indent
set history=1000
set paste
set mouse=a



" cscope setting
"set csprg=/usr/bin/cscope
"set csto=0
"set cst
"cs add /data001/sh.son/proteus_work/LGE/ICCM/framework/cscope.out
"set csverb


call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


" Vim-airline
Plugin 'vim-airline/vim-airline'

Plugin 'sickill/vim-monokai'

Plugin 'SrcExpl'

Plugin 'scrooloose/nerdtree'

Plugin 'taglist.vim'

Plugin 'AutoComplPop'

Plugin 'cscope_macros.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar


colorschem monokai


nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l



" Tag setting
set tags+=/data001/sh.son/proteus_work/LGE/ICCM/framework/tags

"=========== taglist ======================
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/bin/ctags"

"============ NERDTree ===================
let NERDTreeWinPos = "right"
nmap <F8> :NERDTreeToggle<CR>

"============ source explorer =============
nmap <F9> :SrcExplToggle<CR>
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0
