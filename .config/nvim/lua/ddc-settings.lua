vim.cmd[[call ddc#custom#patch_global('sources', ['around', 'skkeleton' ,'nvim-lsp'])]]
vim.cmd[[call ddc#custom#patch_global('completionMenu', 'pum.vim')]]

vim.cmd[[call ddc#custom#patch_global('sourceOptions', {
      \ '_': {
      \   'matchers': ['matcher_fuzzy'],
      \   'sorters': ['sorter_fuzzy'],
      \   'converters': ['converter_fuzzy']
      \},
      \ 
      \ 'skkeleton': {
      \  'mark': 'skkeleton',
      \  'matchers': ['skkeleton'],
      \  'sorters': [],
      \  'minAutoCompleteLength': 2,
      \},
      \ 'nvim-lsp': {
      \   'mark': 'lsp',
      \   'forceCompletionPattern': '\.\w*|:\w*|->\w*' },
      \})]]

-- Change source options
vim.cmd[[call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ })]]
vim.cmd[[call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ })]]

-- Customize settings on a filetype
vim.cmd[[call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])]]
vim.cmd[[call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
      \ 'clangd': {'mark': 'C'},
      \ })]]
vim.cmd[[call ddc#custom#patch_filetype('markdown', 'sourceParams', {
      \ 'around': {'maxSize': 100},
      \ })]]
-- Mapping
vim.cmd[[inoremap <Tab>   <Cmd>call pum#map#insert_relative(+1)<CR>]]
vim.cmd[[inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>]]
vim.cmd[[inoremap <C-n>   <Cmd>call pum#map#insert_relative(+1)<CR>]]
vim.cmd[[inoremap <C-p>   <Cmd>call pum#map#insert_relative(-1)<CR>]]
vim.cmd[[inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>]]
vim.cmd[[inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>]]
vim.cmd[[inoremap <PageDown> <Cmd>call pum#map#insert_relative_page(+1)<CR>]]
vim.cmd[[inoremap <PageUp>   <Cmd>call pum#map#insert_relative_page(-1)<CR>]]
-- Use ddc.
vim.cmd[[call ddc#enable()]]

