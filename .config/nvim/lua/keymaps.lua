vim.api.nvim_set_keymap('n', '<leader>v', ':vsp <CR>', {noremap = true, silent = trutryee})
vim.cmd[[ :tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | wincmd j | resize 10 | terminal <args>
autocmd TermOpen * startinsert
]]
-- vim.cmd[[nnoremap <silent> <leader>gg :LazyGit<CR>]]
vim.cmd[[
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').search_history()<cr>
nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<cr>
" nnoremap <leader>gf <cmd>Telescope git_files theme=get_dropdown<cr>
nnoremap <leader>b <cmd>Telescope buffers theme=get_dropdown<cr>
nnoremap <leader>gb <cmd>Telescope git_branches theme=get_dropdown<cr>
nnoremap <leader>gc <cmd>Telescope git_commits theme=get_dropdown<cr>
nnoremap <leader>gs <cmd>Telescope git_status theme=get_dropdown<cr>
nnoremap <leader>fH <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>ps <cmd> lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")}) <cr>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
]]
-- vim.api.nvim_set_keymap("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})


vim.cmd[[
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>

]]

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd[[
nnoremap <silent>\bb :bnext<CR>
nnoremap <silent>\B :bprevious<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

]]

-- " These commands will move the current buffer backwards or forwards in the bufferline

-- " These commands will sort buffers by directory, language, or a custom criteria
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)

map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)

map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)

map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
-- map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
-- map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
--
-- map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)


-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
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
-- vim.api.nvim_set_keymap('n', 'f', '<Plug>(easymotion-fl)', {
--     noremap = true,
--     silent = true,
-- })
-- map('n', 'f', '<Plug>easymotion-fl', {noremap = true})

-- hrsh7th/nvim-pasta 
vim.keymap.set({ 'n', 'x' }, 'p', require('pasta.mappings').p)
vim.keymap.set({ 'n', 'x' }, 'P', require('pasta.mappings').P)
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
vim.api.nvim_set_keymap('v', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
vim.api.nvim_set_keymap('o', '<leader>e', "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>", {})

vim.api.nvim_set_keymap('n', '<leader>+', '<cmd> vertical resize +5<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>-', '<cmd> vertical resize -4<cr>', {})
vim.api.nvim_set_keymap('n', '<leader><cr>', '<cmd> so ~/.config/nvim/init.vim <cr>', {})
vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
vim.keymap.set('n', ']x', '<Plug>(git-conflict-prev-conflict)')
vim.keymap.set('n', '[x', '<Plug>(git-conflict-next-conflict)')
