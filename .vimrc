set laststatus=2
set spell
set spelllang+=cjk
set showcmd
set cursorline
set number
set showmatch
set incsearch
syntax on

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors

let g:tokyonight_style = 'storm'
let g:tokyoniight_enable_italic = 1

colorscheme tokyonight
