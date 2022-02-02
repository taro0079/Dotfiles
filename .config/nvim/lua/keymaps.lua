vim.api.nvim_set_keymap('n', '<leader>v', ':vsp <CR>', {noremap = true, silent = trutryee})
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew <CR>', {noremap = true, silent = trutryee})
vim.cmd[[ :tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert
]]
vim.cmd[[nnoremap <silent> <leader>gg :LazyGit<CR>]]
vim.cmd[[
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>b <cmd>Telescope buffers theme=get_dropdown<cr>
nnoremap <leader>gb <cmd>Telescope git_branches theme=get_dropdown<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n", "<leader>d", ":lua require'dapui'.toggle()<CR>", { silent = true})
-- map("n", "<leader><leader>df", ":lua require'dapui'.eval()<CR>", { silent = true})
-- map("n", "<F5>", ":lua require'dap'.continue()<CR>", { silent = true})
-- map("n", "<F10>", ":lua require'dap'.step_over()<CR>", { silent = true})
-- map("n", "<F11>", ":lua require'dap'.step_into()<CR>", { silent = true})
-- map("n", "<F12>", ":lua require'dap'.step_out()<CR>", { silent = true})
-- map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { silent = true})
-- map("n", "<leader>bc", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = true})
-- map("n", "<leader>l", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", { silent = true})

-- " These commands will navigate through buffers in order regardless of which mode you are using
-- " e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
vim.cmd[[
nnoremap <silent>\bb :bnext<CR>
nnoremap <silent>\B :bprevious<CR>
" nnoremap <silent>\b :BufferLineMoveNext<CR>
" nnoremap <silent>\\b :BufferLineMovePrev<CR>
" nnoremap <silent>be :BufferLineSortByExtension<CR>
" nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

]]

-- " These commands will move the current buffer backwards or forwards in the bufferline

-- " These commands will sort buffers by directory, language, or a custom criteria
