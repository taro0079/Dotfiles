set laststatus=2
set spell
set spelllang+=cjk
set showcmd
set cursorline
set number
set showmatch
set incsearch
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-around'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'joshdick/onedark.vim'
Plug 'vim-skk/skkeleton'
Plug 'tani/ddc-fuzzy'
Plug 'Shougo/pum.vim'
Plug 'Shougo/ddc-omni'
Plug 'tani/ddc-path'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'shun/ddc-vim-lsp'

call plug#end()
colorscheme onedark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
call skkeleton#config({
    \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
    \ })
" Customize global settings
" Use around source.
" https://github.com/Shougo/ddc-around
call ddc#custom#patch_global('sources', ['around', 'skkeleton', 'vim-lsp'])
call ddc#custom#patch_global('completionMenu', 'pum.vim')

" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_fuzzy'],
      \   'sorters': ['sorter_fuzzy'],
      \   'converters': ['converter_fuzzy']
      \},
      \ 
      \ 'skkeleton': {
      \  'mark': 'skkeleton',
      \  'matchers': ['skkeleton'],
      \  'sorters': [],
      \  'minAutoCompleteLength': 2,
      \},
      \ 'vim-lsp' : {
      \   'matchers': ['matcher_head'],
      \   'mark': 'lsp',
        \ },
      \})

" Change source options
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ })
call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })
" Mapping
inoremap <Tab>   <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-n>   <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <C-p>   <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>
inoremap <PageDown> <Cmd>call pum#map#insert_relative_page(+1)<CR>
inoremap <PageUp>   <Cmd>call pum#map#insert_relative_page(-1)<CR>

" Mappings
" <TAB>: completion.
"inoremap <silent><expr> <TAB>
"\ pumvisible() ? '<C-n>' :
"\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
"\ '<TAB>' : ddc#map#manual_complete()
"
"" <S-TAB>: completion back.
"inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()
