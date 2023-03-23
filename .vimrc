" basic settings ---------------------------- {{{1
let mapleader = ','
set title
" set cmdheight=1
" set laststatus=2
set tags=tags;
" set clipboard&
set clipboard=unnamed,unnamedplus
set showcmd
set ruler
set undofile
set cursorline
set relativenumber
set linebreak
set display+=lastline 
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
set noundofile


" ctagの設定  -------------------------------- {{{1
" rubyファイルを保存する度にctagsを実行する
" autocmd BufWritePost *.rb silent! !ctags -R &

""""""""""""""""""""""""""""""""""""""""""""""
" 矢印キーの無効化   ------------------------- {{{1
"""""""""""""""""""""""""""""""""""""""""""""
map <up> <nop>
map <down> <nop>
map <right> <nop>
map <left> <nop>

" eeasymotion settings ----------------------{{{1
map f <Plug>(easymotion-fl)
map t <Plug>(easymotion-tl)
map F <Plug>(easymotion-Fl)
map T <Plug>(easymotion-Tl)

" fern のマッピング ------------------------ {{{1
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
let g:fern#renderer = "nerdfont"

" => Text, tab --------------------------- {{{1
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set relativenumber
set number

set ai "Auto Indent"
set si "Smart Indent"
set wrap "Wrap lines"
" => Plugins ---------------------------------- {{{1
call plug#begin()
" Plug 'machakann/vim-sandwich'
Plug 'taro0079/path_to_clipboard'
Plug 'fxn/vim-monochrome'
Plug 'lifepillar/vim-gruvbox8'
Plug 'axvr/photon.vim'
Plug 'github/copilot.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'vim-utils/vim-ruby-fold'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim'
Plug 'cocopon/iceberg.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'pantharshit00/vim-prisma'
Plug 'nordtheme/vim'
Plug 'thinca/vim-qfhl'
Plug 'junegunn/vim-easy-align'
Plug 'EinfachToll/DidYouMean'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mangeshrex/everblush.vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'vim-denops/denops.vim'
Plug 'lambdalisue/gin.vim'
Plug 'lambdalisue/gina.vim'
Plug 'sheerun/vim-polyglot'
Plug 'logico/typewriter-vim'
Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'majutsushi/tagbar'
Plug 'justinmk/vim-sneak'
Plug 'liuchengxu/vista.vim'
Plug 'vim-skk/eskk.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production'  }
Plug 'sainnhe/sonokai'
Plug 'kana/vim-textobj-user'
Plug 'osyo-manga/vim-textobj-blockwise'
Plug 'tyru/open-browser.vim'
Plug 'itchyny/calendar.vim'
Plug 'whatyouhide/vim-gotham'
" fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'lambdalisue/suda.vim'
Plug 'yuki-yano/fuzzy-motion.vim'
Plug 'tc50cal/vim-terminal'
call plug#end()

set imdisable

" " coc settings -------------------------- {{{1
" " Set internal encoding of vim, not needed on neovim, since coc.nvim using some

" " unicode characters in the file autoload/float.vim
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

" if has("nvim-0.5.0") || has("patch-8.1.1564")
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif

" " Use tab for trigger completion with characters ahead and navigate.

" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by

" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <space>f  <Plug>(coc-format)
nmap <silent> <space>f  <Plug>(coc-format)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" If you want :UltiSnipsEdit to split your window.
" ulti setting -------------------------------{{{1
let g:UltiSnipsExpandTrigger="<Nop>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" ale setting -------------------------------{{{1
let g:ale_linters = {
      \  'ruby':             ['rubocop'],
      \   'javascript':      ['eslint'],
      \   'typescript':      ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'css':             ['eslint'],
      \  }
let g:ale_linters_explicit          = 1
" let g:airline#extensions#ale#enable = 1

" let g:airline#extensions#tabline#enabled = 1

"airlineのシンボルの設定
" if !exists('g:airline_symbols')
  " let g:airline_symbols ={}
" endif
" let g:airline_symbols.branch = ''
let g:ale_fixers = {
      \   'ruby':            ['rubocop'],
      \   'javascript':      ['eslint'],
      \   'typescript':      ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'css':             ['eslint'],
\}
let g:ale_fix_on_save = 1

nmap <F8> :TagbarToggle<CR>

let g:rustfmt_autosave = 1

" Color -----------------------------------{{{1
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

syntax on

" autocmd SourcePost * highlight Normal     ctermbg=NONE guibg=NONE
"       \ |    highlight LineNr     ctermbg=NONE guibg=NONE
"       \ |    highlight SignColumn ctermbg=NONE guibg=NONE
" let g:gruvbox_transparent_bg = 1
" " $TERMがxterm以外のときは以下を設定する必要がある。
set termguicolors
colorscheme sonokai
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " 文字色
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " 背景色
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
set background=dark
let g:embark_terminal_italics = 1

" Airline setting -----------------------------{{{1
" let g:airline#extensions#ale#enabled = 1
" let g:airline_theme = 'photon'

" ESKK setting ------------------------------- {{{1
let g:eskk#directory        = "~/.config/eskk"
let g:eskk#dictionary       = { 'path': "~/.config/eskk/my_jisyo", 'sorted': 1, 'encoding': 'utf-8',}
let g:eskk#large_dictionary = {'path': "~/.config/eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp',}

" cursor settings for wsl ---------------------------------{{{1
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

" EasyAlign setting --------------------------------- {{{1
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" fold settings ---------------------- {{{1
set foldmethod=manual
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" open-browser settings ---------------- {{{1
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)


" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:ale_fixers = {
      \   'ruby':            ['rubocop'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'javascript': ['prettier'],
\   'javascriptreact': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\   'python': ['autopep8', 'black', 'isort'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'

" airline settings --------------------{{{1
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" suda setting --------------{{{1
let g:suda_smart_edit = 1

nmap <C-p> :GFiles<CR>
nmap <leader>ff :Files<CR>
nmap <leader>fq :RG<CR>
if executable('rg')
  function! FZGrep(query, fullscreen)
    " --hidden 隠しファイルも隠しディレクトリも含める
    " --follow シンボリックリンクも含める
    " --glob   対象ファイルのファイルパターンを指定
    let command_fmt = 'rg --column --line-number --no-heading --hidden --follow --glob "!.git/*" --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
  endfunction

  command! -nargs=* -bang RG call FZGrep(<q-args>, <bang>0)
endif

nmap <leader><leader>s :FuzzyMotion<CR>



