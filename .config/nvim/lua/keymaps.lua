vim.api.nvim_set_keymap('n', '<leader>v', ':vsp <CR>', {noremap = true, silent = trutryee})
vim.cmd[[ :tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert
]]
-- vim.cmd[[nnoremap <silent> <leader>gg :LazyGit<CR>]]
vim.cmd[[
	xmap ga <Plug>(EasyAlign)
	nmap ga <Plug>(EasyAlign)
	map <up> <nop>
	map <down> <nop>
	map <right> <nop>
	map <left> <nop>
	" map f <Plug>(easymotion-fl)
	" map t <Plug>(easymotion-tl)
	" map F <Plug>(easymotion-Fl)
	" map T <Plug>(easymotion-Tl)
]]



local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>gp', ':VGit buffer_hunk_preview<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gr', ':VGit buffer_hunk_reset<CR>', {
    noremap = true,
    silent = true,
})
-- vim.api.nvim_set_keymap('n', '<C-k>', ':VGit hunk_up<CR>', {
--     noremap = true,
--     silent = true,
-- })
-- vim.api.nvim_set_keymap('n', '<C-j>', ':VGit hunk_down<CR>', {
--     noremap = true,
--     silent = true,
-- })
vim.api.nvim_set_keymap('n', '<leader>gh', ':VGit buffer_history_preview<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gu', ':VGit buffer_reset<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gd', ':VGit buffer_diff_preview<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('i', '<C-[>', '<ESC>', {
    noremap = true,
    silent = true,
})

-- hrsh7th/nvim-pasta 
vim.keymap.set({ 'n', 'x' }, 'p', require('pasta.mappings').p)
vim.keymap.set({ 'n', 'x' }, 'P', require('pasta.mappings').P)
vim.api.nvim_set_keymap('n', '<leader>+', '<cmd> vertical resize +5<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>-', '<cmd> vertical resize -4<cr>', {})
vim.api.nvim_set_keymap('n', '<leader><cr>', '<cmd> so ~/.config/nvim/init.vim <cr>', {})
vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', ']x', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', '[x', '<Plug>(git-conflict-next-conflict)')

vim.keymap.set("n", "<Leader><Leader>i", "<cmd>PickIcons<cr>", opts)
vim.keymap.set("i", "<C-i>", "<cmd>PickIconsInsert<cr>", opts)
vim.keymap.set("i", "<A-i>", "<cmd>PickAltFontAndSymbolsInsert<cr>", opts)
-- vim.keymap.set("n", "<leader>fw", "<Plug>(easymotion-overwin-f)", opts)
-- vim.keymap.set("n", "s", "<Plug>(easymotion-overwin-f2)", opts)
-- vim.keymap.set("n", "<leader>L", "<Plug>(easymotion-overwin-line)", opts)
-- vim.keymap.set("n", "<leader>w", "<Plug>(easymotion-overwin-w)", opts)
-- vim.keymap.set('n', 'f', '<Plug>(easymotion-fl)')
-- vim.keymap.set('n', 'F', '<Plug>(easymotion-Fl)')
-- vim.keymap.set('n', 't', '<Plug>(easymotion-tl)')
-- vim.keymap.set('n', 'T', '<Plug>(easymotion-Tl)')
vim.keymap.set('n', "<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>")
vim.keymap.set('n', "<leader>fq", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set('n', "<leader>fh", "<cmd>lua require('telescope.builtin').search_history()<cr>")
vim.keymap.set('n', "<C-p>", "<cmd>lua require('telescope.builtin').git_files()<cr>")
vim.keymap.set('n', "<leader>gb", "<cmd>Telescope git_branches theme=get_dropdown<cr>")
vim.keymap.set('n', "<leader>gc", "<cmd>Telescope git_commits theme=get_dropdown<cr>")
vim.keymap.set('n', "<leader>gs", "<cmd>Telescope git_status theme=get_dropdown<cr>")
vim.keymap.set('n', "<leader>fH", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
vim.keymap.set('n', "<leader>ps", "<cmd> lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')}) <cr>")
vim.keymap.set('n', "<C-n>", ":Fern . -reveal=% -drawer -toggle -width=40<CR>")
vim.keymap.set('c', "<C-j>", "<Plug>(skkeleton-toggle)")
vim.api.nvim_set_keymap('i', '<C-j>', '<Plug>(skkeleton-toggle)', {
    noremap = true,
    silent = true,
})
