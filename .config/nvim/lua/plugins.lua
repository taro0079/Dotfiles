vim.cmd [[autocmd BufWritePost init.lua source <afile> | PackerCompile]]
require('packer').startup(function()

	use { 'windwp/nvim-ts-autotag', config = function() require 'nvim-treesitter.configs'.setup {
			autotag = {
				enable = true
			}
		}
	end }
	use { 'folke/tokyonight.nvim' }
	-- motion
	use { 'easymotion/vim-easymotion' }
	-- use { 'luisiacc/gruvbox-baby' }
	use { 'ellisonleao/gruvbox.nvim' }
	use { 'phaazon/hop.nvim', config = function() require 'hop'.setup() end}
	use { 'justinmk/vim-sneak' }
	use 'wbthomason/packer.nvim'
	use { 'stsewd/fzf-checkout.vim' }
	use 'simrat39/symbols-outline.nvim'
	use { 'simeji/winresizer' } -- windowのサイズを変更するプラグイン
	use 'liuchengxu/vista.vim'
	-- for ruby
	use { 'RRethy/nvim-treesitter-endwise' }
	use { 'pwntester/octo.nvim',
		requires= {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim',
			'kyazdani42/nvim-web-devicons'
		},
		config= function ()
			require"octo".setup()
		end
	}
	use { 'kdheepak/lazygit.nvim' }
	use 'kat0h/bufpreview.vim'
	use { "akinsho/toggleterm.nvim", config = function() require 'toggleterm-setting' end }

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
	use { 'dense-analysis/ale' }
	use { 'tpope/vim-rails' }


	-- LSP系のプラグイン
	use { 'junegunn/vim-emoji' }
	use { 'folke/lsp-colors.nvim' }
	use { 'j-hui/fidget.nvim', config = function() require 'fidget'.setup {} end }
	use { 'RRethy/vim-illuminate' }
	use { 'rust-lang/rust.vim' }
	use { 'hrsh7th/vim-vsnip-integ' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'neovim/nvim-lspconfig', config = function() require 'lsp' end }
	-- snippets
	use { 'hrsh7th/vim-vsnip' }
	use { 'quangnguyen30192/cmp-nvim-ultisnips' }
	use { 'SirVer/ultisnips' }
	use { 'honza/vim-snippets' }
	-- use { 'norcalli/snippets.nvim', config = function () require 'snippets-setting.lua' end }
	use { 'ray-x/lsp_signature.nvim', config = function() require "lsp_signature".setup() end }
	use 'onsails/lspkind-nvim'
	use { 'williamboman/nvim-lsp-installer' }
	-- use { 'dcampos/nvim-snippy' }
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
	use { 'sainnhe/gruvbox-material' }
	use({
		"catppuccin/nvim",
		as = "catppuccin"
	})
	-- use { 'Mofiqul/vscode.nvim', config = function() require'vscode-setting' end}
	-- use { 'neoclide/coc.nvim', branch = 'release'}
	use { 'hrsh7th/nvim-cmp', config = function() require 'cmp-setting' end }
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
	use {
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua", "nvim-cmp" },
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' },
			config = function() require('telescope-setting') end
		}
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use { 'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('skkeleton-setting') end }

	use 'vim-denops/denops.vim'
	use { "ellisonleao/glow.nvim" } -- markdownをきれいに表示するプラグイン

	use { 'junegunn/fzf', run = ':fzf#install()' }
	use { 'junegunn/fzf.vim' }
	use { 'hoob3rt/lualine.nvim',
		config = function()
			require("lualine-settings")
		end }

	-- git
	-- use { 'tpope/vim-fugitive' }
	-- use {
	-- 	'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
	-- 	config = function() require 'gitsigns-setting' end
	-- }
	use { 'skanehira/gh.vim' }
	use { 'tanvirtin/vgit.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function() require 'vgit-setting' end }
	use { 'TimUntersberger/neogit', config = function() require 'neogit-setting' end }
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim', config = function() require('diffview-setting') end }
	use { 'akinsho/git-conflict.nvim', config = function()
		require('git-conflict-setting')
	end
	}
	-- use { 'rhysd/conflict-marker.vim' }



	use { 'junegunn/vim-easy-align' } -- 表とかをきれいに整列するプラグイン
	use { "lukas-reineke/indent-blankline.nvim", config = function() require('indent-blankline-setting') end }
	-- use { 'rhysd/clever-f.vim' }
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
	-- use { 'lewis6991/spellsitter.nvim', config = function() require 'spellsitter-setting' end }
	use({ "yioneko/nvim-yati", requires = "nvim-treesitter/nvim-treesitter" })

	-- fern
	use { 'lambdalisue/fern.vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'lambdalisue/glyph-palette.vim' }
	use { 'antoinemadec/FixCursorHold.nvim' }
	use { 'AckslD/nvim-neoclip.lua', requires = { 'nvim-telescope/telescope.nvim' },
		config = function() require('neoclip').setup() end }
	use { 'hrsh7th/nvim-pasta' }

	-- use { 'romgrk/barbar.nvim', config = function() require 'barbar-setting' end }

	-- startup plugin
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function()
			require 'alpha'.setup(require 'alpha.themes.startify'.config)
		end
	}

	-- Go
	use { 'ray-x/go.nvim' }
	use { 'fatih/vim-go' }
	use {
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
end)
-- vim.g.UltiSnipsExpandTrigger = "<C-s>"
-- vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
-- vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
