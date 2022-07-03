set laststatus=2
set clipboard+=unnamed
set showcmd
set cursorline
set relativenumber
set number
set showmatch
set incsearch
set nocompatible
set signcolumn=yes
set smartcase
set hlsearch
set incsearch
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab
""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai "Auto Indent"
set si "Smart Indent"
set wrap "Wrap lines"

runtime */jetpack.vim
call jetpack#begin()
Jetpack 'NLKNguyen/papercolor-theme'
Jetpack 'vim-denops/denops.vim'
Jetpack 'morhetz/gruvbox'
Jetpack 'sainnhe/gruvbox-material'
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
Jetpack 'rust-lang/rust.vim'
Jetpack 'pantharshit00/vim-prisma'
" Jetpack 'ruby-formatter/rufo-vim'
Jetpack 'tpope/vim-endwise'
Jetpack 'jiangmiao/auto-pairs'
Jetpack 'tpope/vim-surround'
Jetpack 'tpope/vim-commentary'

Jetpack 'sheerun/vim-polyglot'
Jetpack 'dense-analysis/ale'
Jetpack 'honza/vim-snippets'
Jetpack 'SirVer/ultisnips'
Jetpack 'majutsushi/tagbar'
Jetpack 'justinmk/vim-sneak'
Jetpack 'liuchengxu/vista.vim'

Jetpack 'neoclide/coc.nvim', {'branch': 'release'}


" Jetpack 'vim-skk/skkeleton'

Jetpack 'junegunn/fzf', { 'do': { -> fzf#install() } }
Jetpack 'junegunn/fzf.vim'

Jetpack 'tpope/vim-fugitive'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'fatih/vim-go'
Jetpack 'easymotion/vim-easymotion'


call jetpack#end()


" let g:gitgutter_override_sign_column_highlight = 1



let g:rufo_auto_formatting = 1

set imdisable

" " coc settings
" " Set internal encoding of vim, not needed on neovim, since coc.nvim using some

" " unicode characters in the file autoload/float.vim
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

" if has("nvim-0.5.0") || has("patch-8.1.1564")
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif



" " Use tab for trigger completion with characters ahead and navigate.

" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by

" " other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" " Use K to show documentation in preview window.

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)



" " Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>fa  <Plug>(coc-format)
nmap <leader>fa <Plug>(coc-format)



augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" " Applying codeAction to the selected region.
" " Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)



" " Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)



" " Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" " Map function and class text objects
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" " Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif



" " Use CTRL-S for selections ranges.
" " Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" " Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" " Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" " Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings for CoCList
" " Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"" ultisnips setting
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<down>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

let g:ale_linters = {
      \  'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'css': ['eslint'],
      \  }
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enable = 1
let g:airline#extensions#tabline#enabled = 1

"airlineのシンボルの設定
if !exists('g:airline_symbols')
  let g:airline_symbols ={}
endif
let g:airline_symbols.branch = ''
let g:ale_fixers = {
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'css': ['eslint'],
\}
let g:ale_fix_on_save = 1

nmap <F8> :TagbarToggle<CR>

let g:rustfmt_autosave = 1

""""""""""""""""""""""""""""""""""""""""""""""
" Color
""""""""""""""""""""""""""""""""""""""""""""""
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

syntax on

set termguicolors
" $TERMがxterm以外のときは以下を設定する必要がある。
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " 文字色
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " 背景色
set background=dark
" let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_background = 'soft'
colorscheme gruvbox-material
