require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'bluz71/vim-nightfly-guicolors'
  use {'lervag/vimtex',
  config = function()require('vimtex-settings')end
  }
  

  use {'junegunn/fzf', run = ':fzf#install()' }
  use 'SirVer/ultisnips'
  use 'junegunn/fzf.vim'
  use 'honza/vim-snippets'
  use {'alvarosevilla95/luatab.nvim',
    config = function()vim.o.tabline = '%!v:lua.require\'luatab\'.tabline()'end,
    requires='kyazdani42/nvim-web-devicons'

   }
  use {'kabouzeid/nvim-lspinstall',
   config = function ()
       require("lsp")
     end
   }
   use { "hrsh7th/nvim-compe",
   config = function()
     require("compe-settings")
   end
   }
   use { 'hoob3rt/lualine.nvim',
   config = function()
     require("lualine-settings")
   end

   }

  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/vim-vsnip-integ'}

  use { 'windwp/nvim-autopairs',
  config = function() require('nvim-autopairs').setup() end
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
--  config = require('nvim-treesitter-settings')
  }
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
end)
vim.cmd[[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
vim.cmd[[set termguicolors]]
vim.cmd[[colorscheme nightfly]]
vim.g.UltiSnipsExpandTrigger = "<C-s>"      
vim.g.UltiSnipsJumpForwardTrigger = "<C-j>" 
vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
