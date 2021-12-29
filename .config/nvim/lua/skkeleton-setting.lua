vim.cmd[[imap <C-j> <Plug>(skkeleton-toggle)
         cmap <C-j> <Plug>(skkeleton-toggle)]]
vim.cmd[[
call skkeleton#config({
 \   'globalJisyo': '~/.eskk/SKK-JISYO.L',
 \ })
]]
