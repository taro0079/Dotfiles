vim.api.nvim_set_keymap('n', '<leader>v', ':vsp <CR>', {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew <CR>', {noremap = true, silent = trutryee})
vim.cmd[[
:tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert
]]
