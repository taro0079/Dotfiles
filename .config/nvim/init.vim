set number
set completeopt=menu,menuone,noselect

lua << EOF
require'plugins'
require 'keymaps'
EOF

if exists('g:nvui')
	set guifont=VictorMono\ Nerd\ Font:h12,JetbrainsMono\ NF,Meiryo\ UI
endif
