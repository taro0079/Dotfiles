vim.cmd [[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use { 'stsewd/fzf-checkout.vim' }
	use 'simrat39/symbols-outline.nvim'
	use { 'simeji/winresizer' } -- windowのサイズを変更するプラグイン
	use 'liuchengxu/vista.vim'
	use 'kat0h/bufpreview.vim'
	use { "akinsho/toggleterm.nvim", config = function() require 'toggleterm-setting' end }
	-- use { 'tpope/vim-endwise' } -- TODO: not working

	use { 'github/copilot.vim' }
	use {
		"zbirenbaum/copilot.lua",
		event = { "VimEnter" },
		config = function()
			vim.defer_fn(function()
				require("copilot").setup()
			end, 100)
		end,
	}


	-- LSP系のプラグイン
	use { 'junegunn/vim-emoji' }
	use { 'folke/lsp-colors.nvim' }
	use { 'j-hui/fidget.nvim', config = function() require 'fidget'.setup {} end }
	use { 'RRethy/vim-illuminate' }
	use {
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require "telescope".load_extension("frecency")
		end,
		requires = { "tami5/sqlite.lua" }
	}
	use { 'hrsh7th/vim-vsnip-integ' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'neovim/nvim-lspconfig', config = function() require 'lsp' end }
	use { 'hrsh7th/vim-vsnip' }
	-- use {'ray-x/lsp_signature.nvim', config=function() require "lsp_signature".setup() end}
	use 'onsails/lspkind-nvim'
	use { 'williamboman/nvim-lsp-installer' }
	use { 'dcampos/nvim-snippy' }
	use { 'declancm/cinnamon.nvim' } -- スムーズなスクロールできるプラグイン
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}

	-- Color Scheme
	use { 'shaunsingh/nord.nvim' }
	use { 'EdenEast/nightfox.nvim' }

	-- cmp
	use { 'hrsh7th/nvim-cmp',
		config = function() require('cmp-setting') end
	}
	use 'hrsh7th/cmp-calc'
	use 'hrsh7th/cmp-omni'
	use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
	use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
	use { 'hrsh7th/cmp-emoji' }
	use { 'uga-rosa/cmp-dictionary', config = function() require 'dictionary-setting' end }
	use 'hrsh7th/cmp-nvim-lua'
	use { 'hrsh7th/cmp-vsnip', config = function() require 'vsnip-settings' end }
	use { 'dcampos/cmp-snippy' }
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'f3fora/cmp-spell'
	use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'quangnguyen30192/cmp-nvim-ultisnips' }
	use {
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua", "nvim-cmp" },
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use { 'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('skkeleton-setting') end }

	use 'vim-denops/denops.vim'
	use { "ellisonleao/glow.nvim" } -- markdownをきれいに表示するプラグイン

	use { 'junegunn/fzf', run = ':fzf#install()' }
	use { 'junegunn/fzf.vim' }
	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'
	use { 'hoob3rt/lualine.nvim',
		config = function()
			require("lualine-settings")
		end }

	-- git
	use { 'tpope/vim-fugitive' }
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require 'gitsigns-setting' end
	}
	use { 'tanvirtin/vgit.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function() require 'vgit-setting' end }
	use { 'TimUntersberger/neogit', config = function() require 'neogit-setting' end }
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim', config = function() require('diffview-setting') end }
	-- use { 'akinsho/git-conflict.nvim', config= function()
	-- 	require('git-conflict-setting')
	-- 	end
	-- }



	use { 'junegunn/vim-easy-align' } -- 表とかをきれいに整列するプラグイン
	use { "lukas-reineke/indent-blankline.nvim", config = function() require('indent-blankline-setting') end }
	use { 'easymotion/vim-easymotion' }
	use { 'rhysd/clever-f.vim' }
	use { 'haya14busa/vim-edgemotion' }
	use { 't9md/vim-quickhl' }
	use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end } -- コメントアウトを行うプラグイン
	use { 'tpope/vim-surround' } -- 括弧をつけるプラグイン
	use { 'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup() end
	} -- 自動で括弧をつけるプラグイン
	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
		config = function() require('nvim-treesitter-settings') end
	}
	use { 'lewis6991/spellsitter.nvim', config = function() require 'spellsitter-setting' end }
	use({ "yioneko/nvim-yati", requires = "nvim-treesitter/nvim-treesitter" })

	-- fern
	use { 'lambdalisue/fern.vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'lambdalisue/glyph-palette.vim' }
	use { 'antoinemadec/FixCursorHold.nvim' }

	use { 'romgrk/barbar.nvim', config = function() require 'barbar-setting' end }
end)
vim.g.UltiSnipsExpandTrigger = "<C-s>"
vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
