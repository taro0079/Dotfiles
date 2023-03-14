local api = vim.api

-- Telescope -- {{ 1
api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require('telescope.builtin').git_files()<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fq', "<cmd>lua require('telescope.builtin').live_grep()<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true,
	silent = true })
api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').search_history()<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>ps',
	"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')}) <cr>",
	{ noremap = true, silent = false })
api.nvim_set_keymap('n', "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches({theme=get_dropdown})<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', "<leader>gc", "<cmd>lua require('telescope.builtin').git_commits({theme=get_dropdown})<cr>",
	{ noremap = true, silent = true })
api.nvim_set_keymap('n', "<leader>gs", "<cmd>lua require('telescope.builtin').git_status({theme=get_dropdown})<cr>",
	{ noremap = true, silent = true })

-- skk setting
api.nvim_set_keymap('c', "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true, silent = true })
api.nvim_set_keymap('i', "<C-j>", "<Plug>(skkeleton-toggle)", { noremap = true, silent = true })

-- setting windows size
api.nvim_set_keymap('n', "<leader>+", "<cmd> vertical resize +5<cr>", { noremap = true, silent = true })
api.nvim_set_keymap('n', "<leader>-", "<cmd> vertical resize -5<cr>", { noremap = true, silent = true })

-- source init.lua
api.nvim_set_keymap('n', "<leader><cr>", "<cmd> so ~/.config/nvim/init.lua <cr>", { noremap = true, silent = true })

api.nvim_set_keymap('n', "<C-n>", ":NvimTreeToggle<cr>", { noremap = true, silent = true })

-- lsp diagnostic
api.nvim_set_keymap('n', "<leader>sd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics() <cr>",
	{ noremap = true, silent = true })

-- vim.api.nvim_set_keymap('', 'f',
-- 	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
-- 	, {})
-- vim.api.nvim_set_keymap('', 'F',
-- 	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
-- 	, {})
-- vim.api.nvim_set_keymap('', 't',
-- 	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
-- 	, {})
-- vim.api.nvim_set_keymap('', 'T',
-- 	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>"
-- 	, {})
vim.api.nvim_set_keymap('', '<leader><leader>w',
	"<cmd> HopVertical <cr>"
	, {})

-- dial
vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), {noremap = true})
vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), {noremap = true})
vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), {noremap = true})
vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), {noremap = true})
vim.keymap.set("v", "g<C-a>",require("dial.map").inc_gvisual(), {noremap = true})
vim.keymap.set("v", "g<C-x>",require("dial.map").dec_gvisual(), {noremap = true})
-- pounce
vim.keymap.set("n", "s","<cmd>Pounce<CR>", {noremap = true})
vim.keymap.set("n", "S","<cmd>PounceRepeat<CR>", {noremap = true})
vim.keymap.set("v", "s","<cmd>Pounce<CR>", {noremap = true})
vim.keymap.set("o", "gs","<cmd>Pounce<CR>", {noremap = true})

-- navogator
vim.keymap.set({'n','t'}, '<C-h>', '<cmd>lua require("Navigator").left()<cr>', {noremap = true})
vim.keymap.set({'n','t'}, '<C-j>', '<cmd>lua require("Navigator").down()<cr>', {noremap = true})
vim.keymap.set({'n','t'}, '<C-k>', '<cmd>lua require("Navigator").up()<cr>', {noremap = true})
vim.keymap.set({'n','t'}, '<C-l>', '<cmd>lua require("Navigator").right()<cr>', {noremap = true})
