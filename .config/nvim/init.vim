set number
set exrc
set signcolumn=yes
set relativenumber
set nocompatible
set clipboard+=unnamedplus
set cursorline
" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl Non

set pumblend=10
" set spell

lua << EOF
require'plugins'
require 'keymaps'
vim.o.updatetime = 300
vim.o.incsearch = false
vim.opt.spell = true
vim.opt.spelllang = { 'en_us', 'cjk' }
-- vim.g.tokyonight_transparent = true
EOF


set termguicolors
colorscheme nightfox
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})



let g:fern#renderer = "nerdfont"
let g:fern#default_hidden=1
augroup my-glyph-palette
	autocmd! *
	autocmd FileType fern call glyph_palette#apply()

	autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END


let g:rustfmt_autosave = 1
let g:ale_linters = {
	\  'ruby': ['rubocop']
\  }
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enable = 1
let g:ale_fixers = {
	\   'ruby': ['rubocop'],
\}
let g:ale_fix_on_save = 1
" disable the default highlight group
let g:conflict_marker_highlight_group = ''

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81
