vim.cmd[[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use { 'stsewd/fzf-checkout.vim' }
  use 'kristijanhusak/vim-carbon-now-sh'
  -- use 'luisiacc/gruvbox-baby'
  use 'simrat39/symbols-outline.nvim'
  use 'liuchengxu/vista.vim'
  use 'kat0h/bufpreview.vim'
  use {"akinsho/toggleterm.nvim", config = function() require'toggleterm-setting' end}
  -- use {'neoclide/coc.nvim', branch = 'release'}
  -- use { 'tpope/vim-endwise' }

  use { 'github/copilot.vim' }
  use{
  "zbirenbaum/copilot.lua",
  event = {"VimEnter"},
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()
    end, 100)
  end,
}

  -- use 'segeljakt/vim-silicon'
  -- Git
  use { 'tanvirtin/vgit.nvim', requires = {'nvim-lua/plenary.nvim'}, config = function() require'vgit-setting' end }

  -- LSP
  use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }
  use { 'junegunn/vim-emoji' }
  use { 'folke/lsp-colors.nvim' }
  use { 'j-hui/fidget.nvim', config = function() require'fidget'.setup{} end }
  use { 'RRethy/vim-illuminate' }
  use {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require"telescope".load_extension("frecency")
  end,
  requires = {"tami5/sqlite.lua"}
}
  use {'hrsh7th/nvim-cmp',
  config = function()require('cmp-setting') end
  }
  use { 'hrsh7th/vim-vsnip-integ'}
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'quangnguyen30192/cmp-nvim-ultisnips'}
  use {'neovim/nvim-lspconfig', config=function() require'lsp' end}
  use { 'hrsh7th/vim-vsnip' }
  use {'ray-x/lsp_signature.nvim', config=function() require "lsp_signature".setup() end}
  use {'uga-rosa/cmp-dictionary', config= function() require'dictionary-setting' end}
  use {'hrsh7th/cmp-vsnip', config = function() require'vsnip-settings' end}
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lua'
  use {'williamboman/nvim-lsp-installer'}
  use {'dcampos/nvim-snippy'}
  use {'dcampos/cmp-snippy'}
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'f3fora/cmp-spell'
  use {
    "zbirenbaum/copilot-cmp",
    after = {"copilot.lua", "nvim-cmp"},
}
  use 'yonlu/omni.vim'

  -- Color Scheme
  -- use 'bluz71/vim-nightfly-guicolors'
  -- use 'folke/tokyonight.nvim'
  -- use 'olimorris/onedarkpro.nvim'
  -- use { 'NTBBloodbath/doom-one.nvim', config=function() require'doom-one-setting' end }
  -- use { 'rebelot/kanagawa.nvim', config=function () require'kanagawa-setting' end }
  -- use { 'tiagovla/tokyodark.nvim'}
  -- use {'sainnhe/gruvbox-material'}
  -- use { 'catppuccin/nvim',
  -- as = "catppuccin"}
  use { 'EdenEast/nightfox.nvim' }

  -- cmp
  use 'hrsh7th/cmp-calc'
  use 'hrsh7th/cmp-omni'
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
  use { 'hrsh7th/cmp-emoji' }

  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  
  use { 'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('skkeleton-setting') end}

  use 'vim-denops/denops.vim'
  use {"ellisonleao/glow.nvim"}

  use {'junegunn/fzf', run = ':fzf#install()' }
  use { 'junegunn/fzf.vim' }
  use 'SirVer/ultisnips'
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



use { 'junegunn/vim-easy-align' }
  use {"lukas-reineke/indent-blankline.nvim", config = function() require('indent-blankline-setting') end}
  use {'easymotion/vim-easymotion'}
  use {'rhysd/clever-f.vim'}
  use {'haya14busa/vim-edgemotion'}
  use {'t9md/vim-quickhl'}
  use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}
  -- use {'unblevable/quick-scope'}
  use {'tpope/vim-rails'}
  use {'tpope/vim-surround'}
  use {'tpope/vim-fugitive'}
  use { 'windwp/nvim-autopairs',
  config = function() require('nvim-autopairs').setup() end
  }
  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
  config = function() require('nvim-treesitter-settings') end
  }
  use { 'lewis6991/spellsitter.nvim', config = function() require'spellsitter-setting' end}
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
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim', config=function () require('diffview-setting') end }
  use({ "yioneko/nvim-yati", requires = "nvim-treesitter/nvim-treesitter"})
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


