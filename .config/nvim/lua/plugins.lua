vim.cmd[[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
vim.cmd[[set termguicolors]]

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'bluz71/vim-nightfly-guicolors'
  use 'yonlu/omni.vim'
  use 'mdlerch/vim-gnuplot'
  use 'folke/tokyonight.nvim'
--  use 'GoldsteinE/compe-latex-symbols'
  use 'kdheepak/lazygit.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'hrsh7th/cmp-omni'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  --use { 'projekt0n/github-nvim-theme',
--  after = 'lualine.nvim',
--  config = function()require('github-color-settings') end
--  }

--  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp',
--  config = function()require('cmp_tabnine-setting') end
--  }
  -- use {'tyru/eskk.vim',
  -- config = function() require('eskk-setting') end}
  -- use {'vim-skk/denops-skkeleton.vim', config = function() require('skkeleton-setting') end}
  use {'hrsh7th/nvim-cmp',
  config = function()require('cmp-setting') end
  }
  
--  use 'tyru/eskk.vim'
  use { 'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('skkeleton-setting') end}

 use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }
  use 'vim-denops/denops.vim'
  use 'skanehira/preview-markdown.vim'
  use {'lervag/vimtex',
  config = function()require('vimtex-settings')end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvimtree-settings' end
    }
  

  use {'junegunn/fzf', run = ':fzf#install()' }
  use 'SirVer/ultisnips'
  use 'junegunn/fzf.vim'
  use 'honza/vim-snippets'
  use {'alvarosevilla95/luatab.nvim',
    config = function() require('luatab-settings') end,
    requires='kyazdani42/nvim-web-devicons'

   }
  use {'kabouzeid/nvim-lspinstall',
   config = function ()
       require("lsp")
     end
   }
   use { 'hoob3rt/lualine.nvim',
   config = function()
     require("lualine-settings")
   end

   }
use {'hrsh7th/cmp-vsnip', config = function() require'vsnip-settings' end}

use {'L3MON4D3/LuaSnip'}

use {'saadparwaiz1/cmp_luasnip'}

use {'quangnguyen30192/cmp-nvim-ultisnips'}

use {'dcampos/nvim-snippy'}
use {'dcampos/cmp-snippy'}
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
  use { 'hrsh7th/vim-vsnip' }
  use {"lukas-reineke/indent-blankline.nvim", config = function() require('indent-blankline-setting') end}
  use { 'hrsh7th/vim-vsnip-integ'}
  use {'easymotion/vim-easymotion'}
  use {'rhysd/clever-f.vim'}
  use {'haya14busa/vim-edgemotion'}
  use {'t9md/vim-quickhl'}
  use {'preservim/nerdcommenter'}
  use {'unblevable/quick-scope'}
  use {'tpope/vim-fugitive'}
  use {'glepnir/lspsaga.nvim',  config = function() require('lspsaga-setting') end}
  use {'baabelfish/nvim-nim'}


  use { 'windwp/nvim-autopairs',
  config = function() require('nvim-autopairs').setup() end
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
  config = function() require('nvim-treesitter-settings') end
  }
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  use 'onsails/lspkind-nvim'
end)
--vim.g.tokyonight_style = 'night'
--vim.g.tokyonight_italic_function = true
--vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

--vim.cmd[[colorscheme tokyonight]]
vim.g.UltiSnipsExpandTrigger = "<C-s>"      
vim.g.UltiSnipsJumpForwardTrigger = "<C-j>" 
vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
require('onedarkpro').load()

