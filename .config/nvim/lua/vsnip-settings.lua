-- NOTE: You can use other key to expand snippet.

-- Expand
vim.cmd[[imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>']]
vim.cmd[[smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>']]

-- Expand or jump
vim.cmd[[imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]
vim.cmd[[smap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]

-- Jump forward or backward
vim.cmd[[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd[[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd[[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]
vim.cmd[[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]


-- vim.cmd[[nmap        s   <Plug>(vsnip-select-text)]]
-- vim.cmd[[xmap        s   <Plug>(vsnip-select-text)]]
-- vim.cmd[[nmap        S   <Plug>(vsnip-cut-text)]]
-- vim.cmd[[xmap        S   <Plug>(vsnip-cut-text)]]

vim.cmd[[let g:vsnip_filetypes = {}]]
vim.cmd[[let g:vsnip_filetypes.javascriptreact = ['javascript'] ]]
vim.cmd[[let g:vsnip_filetypes.typescriptreact = ['typescript'] ]]
