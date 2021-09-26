set number
"set number
"call plug#begin('~/.vim/plugged')
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
"Plug 'bluz71/vim-nightfly-guicolors'
"Plug 'hoob3rt/lualine.nvim'
"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'ryanoasis/vim-devicons'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'alvarosevilla95/luatab.nvim'
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
"Plug 'hrsh7th/nvim-compe'
"Plug 'SirVer/ultisnips'
"Plug 'kabouzeid/nvim-lspinstall'
"Plug 'honza/vim-snippets'
"Plug 'windwp/nvim-autopairs'
"
"
"call plug#end()
"
"set termguicolors
"colorscheme nightfly
"
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"  highlight = {
"    enable = true, 
"    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"    -- Using this option may slow down your editor, and you may see some duplicate highlights.
"    -- Instead of true it can also be a list of languages
"    additional_vim_regex_highlighting = false,
"  },
"}
"
"
"vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
"vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
"vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
"vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
"vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })
"
"require'compe'.setup {
"  enabled = true;
"  autocomplete = true;
"  debug = false;
"  min_length = 1;
"  preselect = 'enable';
"  throttle_time = 80;
"  source_timeout = 200;
"  resolve_timeout = 800;
"  incomplete_delay = 400;
"  max_abbr_width = 100;
"  max_kind_width = 100;
"  max_menu_width = 100;
"  documentation = {
"    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
"    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
"    max_width = 120,
"    min_width = 60,
"    max_height = math.floor(vim.o.lines * 0.3),
"    min_height = 1,
"  };
"
"  source = {
"    path = true;
"    buffer = true;
"    calc = true;
"    nvim_lsp = true;
"    nvim_lua = true;
"    vsnip = true;
"    ultisnips = true;
"    luasnip = true;
"  };
"}
"
"require('lualine').setup {
"	options = {
"		theme =  'nightfly'
"		}
"	}
"
"
"vim.o.tabline = '%!v:lua.require\'luatab\'.tabline()'
"
"local nvim_lsp = require('lspconfig')
"
"-- Use an on_attach function to only map the following keys
"-- after the language server attaches to the current buffer
"local on_attach = function(client, bufnr)
"  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
"
"  -- Enable completion triggered by <c-x><c-o>
"  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
"
"  -- Mappings.
"  local opts = { noremap=true, silent=true }
"
"  -- See `:help vim.lsp.*` for documentation on any of the below functions
"  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
"  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
"  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
"  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
"  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
"  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
"  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
"  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
"  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
"  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
"  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
"  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
"  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
"  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
"  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
"
"end
"
"-- Use a loop to conveniently call 'setup' on multiple servers and
"-- map buffer local keybindings when the language server attaches
"local servers = { 'pylsp', 'rust_analyzer', 'tsserver', 'texlab'}
"for _, lsp in ipairs(servers) do
"  nvim_lsp[lsp].setup {
"    on_attach = on_attach,
"    flags = {
"      debounce_text_changes = 150,
"    }
"  }
"end
"
"
"
"local function setup_servers()
"  require'lspinstall'.setup()
"  local servers = require'lspinstall'.installed_servers()
"  for _, server in pairs(servers) do
"    require'lspconfig'[server].setup{}
"  end
"end
"
"setup_servers()
"
"-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
"require'lspinstall'.post_install_hook = function ()
"  setup_servers() -- reload installed servers
"  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
"end
"
"local capabilities = vim.lsp.protocol.make_client_capabilities()
"capabilities.textDocument.completion.completionItem.snippetSupport = true
"require'lspconfig'.ruby.setup{on_attach = on_attach, capabilities = capabilities}
"require'lspconfig'.pylsp.setup{on_attach = on_attach, capabilities = capabilities}
"require'lspconfig'.texlab.setup{on_attach = on_attach, capabilities = capabilities}
"
"require('nvim-autopairs').setup{}
"
"EOF
"
"" Using Lua functions
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"
""" Expand
""imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
""smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
""
""" Expand or jump
""imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
""smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
""
""" Jump forward or backward
""imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
""smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
""imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
""smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
""inoremap <silent><expr> <C-Space> compe#complete()
""inoremap <silent><expr> <CR>      compe#confirm(luaeval("require 'nvim-autopairs'.autopairs_cr()"))
""inoremap <silent><expr> <C-e>     compe#close('<C-e>')
""inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
""inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
"
"inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
lua << EOF
require'plugins'
EOF
