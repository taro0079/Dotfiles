set number
set nocompatible
set clipboard+=unnamedplus
set pumblend=10

lua << EOF
require'plugins'
require 'keymaps'

vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
EOF


" Open files in horizontal split
nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>
