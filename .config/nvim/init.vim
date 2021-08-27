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
if exists('g:vscode')
call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/vim-edgemotion'
call plug#end()
" edge motion
map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)
else

call plug#begin('~/.vim/plugged')
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
Plug 'f-person/git-blame.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tyru/eskk.vim'
Plug 'windwp/nvim-autopairs'
Plug 'hrsh7th/nvim-compe'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-surround'
Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/vim-edgemotion'
call plug#end()

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
"let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
let g:gruvbox_material_disable_italic_comment = 1
colorscheme gruvbox-material


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
let g:eskk#directory = "~/.eskk"
let g:eskk#large_dictionary = { 'path': "~/.eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#enable_completion = 1
set imdisable
" edge motion
map <C-j> <Plug>(edgemotion-j)
map <C-k> <Plug>(edgemotion-k)
endif
