vim.cmd[[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use { 'stsewd/fzf-checkout.vim' }
  use 'kristijanhusak/vim-carbon-now-sh'
  use 'luisiacc/gruvbox-baby'
  use 'simrat39/symbols-outline.nvim'
  use 'liuchengxu/vista.vim'
  use 'kat0h/bufpreview.vim'
  use {"akinsho/toggleterm.nvim", config = function() require'toggleterm-setting' end}
  use 'segeljakt/vim-silicon'
  use {'neovim/nvim-lspconfig', config=function() require'lsp' end}
  use 'bluz71/vim-nightfly-guicolors'
  use 'yonlu/omni.vim'
  use 'mdlerch/vim-gnuplot'
  use 'folke/tokyonight.nvim'
  -- use { 'NTBBloodbath/doom-one.nvim', config=function() require'doom-one-setting' end }
  -- use { 'rebelot/kanagawa.nvim', config=function () require'kanagawa-setting' end }

--  use 'GoldsteinE/compe-latex-symbols'
  use 'kdheepak/lazygit.nvim'
  use 'olimorris/onedarkpro.nvim'
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-omni'
  use {'ray-x/lsp_signature.nvim', config=function() require "lsp_signature".setup() end}

  use {'uga-rosa/cmp-dictionary', config= function() require'dictionary-setting' end}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use {'hrsh7th/nvim-cmp',
  config = function()require('cmp-setting') end
  }
  
  use { 'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('skkeleton-setting') end}

 use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }
  use 'vim-denops/denops.vim'
  use 'skanehira/preview-markdown.vim'
  use {'lervag/vimtex',
  config = function()require('vimtex-settings')end
  }
  use {'junegunn/fzf', run = ':fzf#install()' }
  use 'SirVer/ultisnips'
  use 'junegunn/fzf.vim'
  use 'honza/vim-snippets'
  -- use {'alvarosevilla95/luatab.nvim',
  --   config = function() require('luatab-settings') end,
  --   requires='kyazdani42/nvim-web-devicons'

  --  }
   use { 'hoob3rt/lualine.nvim',
   config = function()
     require("lualine-settings")
   end}
     use {
	     "folke/trouble.nvim",
	     requires = "kyazdani42/nvim-web-devicons",
	     config = function()
		     require("trouble").setup {
       }
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
use 'f3fora/cmp-spell'
  use { 'hrsh7th/vim-vsnip' }
  use {"lukas-reineke/indent-blankline.nvim", config = function() require('indent-blankline-setting') end}
  use { 'hrsh7th/vim-vsnip-integ'}
  use {'easymotion/vim-easymotion'}
  use {'rhysd/clever-f.vim'}
  use {'haya14busa/vim-edgemotion'}
  use {'t9md/vim-quickhl'}
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}
  use {'unblevable/quick-scope'}
  use {'tpope/vim-rails'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'}
  use { 'windwp/nvim-autopairs',
  config = function() require('nvim-autopairs').setup() end
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
  config = function() require('nvim-treesitter-settings') end
  }
  -- fern
  use { 'lambdalisue/fern.vim' }
  use { 'lambdalisue/fern-git-status.vim' }
  use { 'lambdalisue/nerdfont.vim' } 
  use { 'lambdalisue/fern-renderer-nerdfont.vim' } 
  use { 'lambdalisue/glyph-palette.vim' }
  use { 'antoinemadec/FixCursorHold.nvim' }

  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require'gitsigns-setting' end
  }
  use { 'romgrk/barbar.nvim', config = function() require'barbar-setting' end}
  use 'onsails/lspkind-nvim'
  use {'williamboman/nvim-lsp-installer'}
  use 'hrsh7th/cmp-nvim-lua'
  use {'sainnhe/gruvbox-material'}
  -- use {
    -- 'kyazdani42/nvim-tree.lua',
    -- requires = {
    --   'kyazdani42/nvim-web-devicons', -- optional, for file icon
    -- },
    -- config = function() require'nvimtree-settings' end
    -- }
    -- use {'mfussenegger/nvim-dap', config= function() require'dap-setting' end}
    -- use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, config=require("dapui").setup()}
    -- use { 'Mofiqul/vscode.nvim' }
    -- use { 'kdheepak/tabline.nvim', config = function() require'tabline-setting' end, requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true}} }
--    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config=function() require'bufferline-setting' end}
end)
vim.g.UltiSnipsExpandTrigger = "<C-s>"      
vim.g.UltiSnipsJumpForwardTrigger = "<C-j>" 
vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
-- require('onedarkpro').load()


