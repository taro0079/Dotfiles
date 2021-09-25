" vim-plugがない場合に自動でダウンロードする
if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" インストールされていないプラグインを自動でインストール
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'Shougo/ddc-around'
Plug 'matsui54/ddc-nvim-lsp-doc'
Plug 'easymotion/vim-easymotion'
Plug 'alvarosevilla95/luatab.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'projekt0n/github-nvim-theme'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'Shougo/neco-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'f-person/git-blame.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'tyru/eskk.vim'
Plug 'windwp/nvim-autopairs'
Plug 'hrsh7th/nvim-compe'
"Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-surround'
"Plug 'rhysd/clever-f.vim'
"Plug 'haya14busa/vim-edgemotion'
"Plug 't9md/vim-quickhl'
Plug 'preservim/nerdcommenter'
"Plug 'unblevable/quick-scope'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'morhetz/gruvbox'
"Plug 'tanvirtin/monokai.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'lervag/vimtex'
Plug 'Shougo/ddc-nvim-lsp', {'on': []}
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'glepnir/lspsaga.nvim'
Plug 'Shougo/deoppet.nvim'
Plug 'vim-skk/denops-skkeleton.vim'
call plug#end()

augroup load_us_insert
    autocmd!
    autocmd InsertEnter * call plug#load(
                \ 'ddc-nvim-lsp',
                \ )| autocmd! load_us_insert
augroup END


syntax on
colorscheme codedark
set termguicolors


lua << EOF
require'setting'
EOF
set number
syntax on
" keymap
nnoremap <space>t :tabnew <cr>
nnoremap <space>ve :e ~/.config/nvim/init.vim <cr>
nnoremap <space>vr :source ~/.config/nvim/init.vim <cr>
:tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert

" nvim tree keymapping
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <leader>v :vsp<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ddc settings
" Customize global settings
" Use around source.
" https://github.com/Shougo/ddc-around
call ddc#custom#patch_global('sources', ['around', 'nvimlsp', 'deoppet', 'skkeleton'])
"
" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \   'around': {'mark': 'A'},
      \   'nvimlsp': {
      \   'mark': 'LSP',
      \   'forceCompletionPattern': '\.|:|->',
        \},
        \ 'necovim': {'mark': 'vim'},
	\ 'deoppet': {'dup': v:true, 'mark': 'dp'},
	\'skkeleton': {
        \     'mark': 'skkeleton',
        \     'matchers': ['skkeleton'],
        \     'sorters': []
        \   },
      \ })


" Change source options
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ })
call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ 'nvimlsp': {'useIcon': v:true},
      \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })
call ddc#custom#patch_filetype(
      \ ['vim', 'toml'], 'sources', ['necovim', 'around']
      \ )
call ddc#custom#patch_filetype(
      \ ['help', 'markdown'], 'sources', ['nextword', 'around']
      \ )

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()
call ddc_nvim_lsp_doc#enable()

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

"lsp saga
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"-- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"-- show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"-- scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
"-- scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"-- rename
nnoremap <silent><leader>gr <cmd>lua require('lspsaga.rename').rename()<CR>
" preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"-- show
nnoremap <silent><leader>cd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
"-- only show diagnostic if cursor is over the area
nnoremap <silent><leader>cc <cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>

"-- jump diagnostic
nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
"-- float terminal also you can pass the cli command in open_float_terminal function
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> 
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>

" skk
imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)
