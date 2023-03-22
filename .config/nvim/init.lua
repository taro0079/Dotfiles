local is_vscode = vim.fn.exists('g:vscode') == 1

if is_vscode then
  require('vscode-plugins')
  require('vscode-keymaps')
else
require('options')
require('plugins')
require('keys')
require('config')
require('gui-settings')
end
