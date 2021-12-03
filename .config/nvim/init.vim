set number
set completeopt=menu,menuone,noselect

lua << EOF
require'plugins'
require 'keymaps'
EOF

if exists('g:nvui')
	set guifont=VictorMono\ Nerd\ Font:h12,JetbrainsMono\ NF,Meiryo\ UI
endif

" Open files in horizontal split
nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>
