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
Plug 'tyru/eskk.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'ycm-core/YouCompleteMe'



call plug#end()

set termguicolors

let g:tokyonight_style = 'storm'
let g:tokyoniight_enable_italic = 1

colorscheme tokyonight

let g:eskk#directory = "~/.eskk"
let g:eskk#dictionary = { 'path': "~/.skk-jisyo", 'sorted': 0, 'encoding': 'utf-8', }
let g:eskk#large_dictionary = { 'path': "~/.eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#enable_completion = 1
set imdisable

let g:UltiSnipsExpandTrigger="<c-k>"

let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

let g:ycm_global_ycm_extra_conf = '${HOME}/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_insertion = 1
set splitbelow

if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
