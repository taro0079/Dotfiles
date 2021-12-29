set number
set nocompatible
set clipboard+=unnamedplus




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
imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
call skkeleton#config({
 \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
 \ })
