vim.cmd[[imap <C-y> <Plug>(skkeleton-toggle)
         cmap <C-y> <Plug>(skkeleton-toggle)]]
vim.cmd[[
call skkeleton#config({
 \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
 \ })
]]
