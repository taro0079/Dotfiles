vim.cmd[[imap <C-l> <Plug>(skkeleton-toggle)
         cmap <C-l> <Plug>(skkeleton-toggle)]]
vim.cmd[[
call skkeleton#config({
 \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
 \ })
]]
