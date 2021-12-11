local saga = require 'lspsaga'

saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
}
vim.api.nvim_set_keymap('n', 'gh', [[<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>ca', [[<cmd>lua require('lspsaga.codeaction').code_action()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>ca', [[:<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', 'K', [[<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<C-f>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<C-b>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', 'gs', [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', 'rn', [[<cmd>lua require('lspsaga.rename').rename()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<space>gd', [[<cmd>lua require'lspsaga.provider'.preview_definition()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>cd', [[<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>dn', [[<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '[e', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', ']e', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<A-d>', [[<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>]], {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('t', '<A-d>', [[<C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>]], {noremap = true, silent = trutryee})



