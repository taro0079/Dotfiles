local api = vim.api

-- Telescope -- {{ 1
api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require('telescope.builtin').git_files()<cr>", {noremap = true, silent = true})
api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({hidden=true})<cr>", {noremap=true, silent=true})
api.nvim_set_keymap('n', '<leader>fq', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap=true, silent=true})
api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap=true, silent=true})
api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').search_history()<cr>", {noremap=true, silent=true})
api.nvim_set_keymap('n', '<leader>ps', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')}) <cr>", {noremap=true, silent=false})
api.nvim_set_keymap('n', "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches({theme=get_dropdown})<cr>",{noremap=true, silent=true})
api.nvim_set_keymap('n', "<leader>gc", "<cmd>lua require('telescope.builtin').git_commits({theme=get_dropdown})<cr>",{noremap=true, silent=true})
api.nvim_set_keymap('n', "<leader>gs", "<cmd>lua require('telescope.builtin').git_status({theme=get_dropdown})<cr>",{noremap=true, silent=true})

-- skk setting
api.nvim_set_keymap('c', "<C-j>", "<Plug>(skkeleton-toggle)",{noremap=true, silent=true})
api.nvim_set_keymap('i', "<C-j>", "<Plug>(skkeleton-toggle)",{noremap=true, silent=true})

-- setting windows size
api.nvim_set_keymap('n', "<leader>+", "<cmd> vertical resize +5<cr>",{noremap=true, silent=true})
api.nvim_set_keymap('n', "<leader>-", "<cmd> vertical resize -5<cr>",{noremap=true, silent=true})

-- source init.lua
api.nvim_set_keymap('n', "<leader><cr>", "<cmd> so ~/.config/nvim/init.lua <cr>",{noremap=true, silent=true})

api.nvim_set_keymap('n', "<C-n>", ":Fern . -reveal=% -drawer -toggle -width=40<CR>", {noremap=true, silent=true})
