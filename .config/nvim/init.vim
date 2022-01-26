set number
set relativenumber
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
let g:silicon = {
      \   'theme':              'Dracula',
      \   'font':                  'Hack; IPA Gothic',
      \   'background':         '#AAAAFF',
      \   'shadow-color':       '#555555',
      \   'line-pad':                   2,
      \   'pad-horiz':                 80,
      \   'pad-vert':                 100,
      \   'shadow-blur-radius':         0,
      \   'shadow-offset-x':            0,
      \   'shadow-offset-y':            0,
      \   'line-number':           v:true,
      \   'round-corner':          v:true,
      \   'window-controls':       v:true,
      \ }


set background=dark
colorscheme gruvbox-baby
if has('termguicolors')
	set termguicolors
endif
