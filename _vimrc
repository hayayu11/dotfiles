
set belloff=all


" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

set cursorline
set number

set clipboard+=unnamed
set clipboard+=autoselect


" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/syntastic' 
"
"

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


syntax enable
set background=dark 
colorscheme solarized

let OSTYPE = system('uname')
if OSTYPE == "Linux\n"
	noremap y y:wv<CR>
	noremap p :rv!<CR>p
endif
set viminfo='50,\"3000,:0,n~/.viminfo

