vim.api.nvim_set_keymap('n', '<leader>v', ':vsp <CR>', {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew <CR>', {noremap = true, silent = trutryee})
vim.cmd[[
:tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert
]]
vim.cmd[[nnoremap <silent> <leader>gg :LazyGit<CR>]]
vim.cmd[[
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]
