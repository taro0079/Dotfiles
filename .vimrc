set laststatus=2
set spell
set spelllang+=cjk
set showcmd
"set cursorline
set number
set showmatch
set incsearch
syntax on

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'ghifarit53/tokyonight-vim'

call plug#end()

set termguicolors

let g:tokyonight_style = 'night'
let g:tokyoniight_enable_italic = 1

colorscheme tokyonight
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48:2;%lu;%lu;%lum"
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
