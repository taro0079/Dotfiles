let mapleader=','
set number
set exrc
set undofile
set noswapfile

set signcolumn=yes
set relativenumber
set nocompatible
set clipboard+=unnamedplus
set cursorline
set termguicolors
colorscheme nightfox
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl Non

set pumblend=10
set spell
set spelllang=en,cjk
lua << EOF
require'plugins'
require 'keymaps'
vim.o.updatetime = 300
vim.o.incsearch = false
vim.opt.spell = true
vim.opt.spelllang = { 'en_us', 'cjk' }
EOF



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
	\   'javascript': ['eslint'],
	\   'typescript': ['eslint'],
	\   'typescriptreact': ['eslint'],
	\   'css': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
set statusline+=%{get(b:,'vgit_status','')}
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)
map <Space>j <Plug>(edgemotion-j)
map <Space>k <Plug>(edgemotion-k)
