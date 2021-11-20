vim.cmd[[imap <C-k> <Plug>(skkeleton-toggle)
         cmap <C-k> <Plug>(skkeleton-toggle)]]
vim.cmd[[
call skkeleton#config({
 \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
 \ })
]]
