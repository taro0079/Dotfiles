return require("packer").startup({
  function(use)
    use "whatyouhide/vim-gotham"
    use "soramugi/auto-ctags.vim"
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {

        }
      end
    }
    use {
      "utilyre/barbecue.nvim",
      requires = {
        "SmiteshP/nvim-navic"
      },
      config = function() require("barbecue").setup() end
    }
    use({
      "numToStr/Navigator.nvim",
      config = function() require("plugins.navigator") end
    })
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons', config = function()
      require(
        "plugins.bufferline")
    end }

    use({
      "hrsh7th/nvim-insx",
      config = function() require('insx.preset.standard').setup() end
    })
    use({
      "fatih/vim-go"
    })
    use({
      "phaazon/hop.nvim",
      branch = "v2", -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      end,
    })

    -- Coc
    use { 'lervag/vimtex' }
    use { 'koenverburg/peepsight.nvim',
      config = function()
        require("plugins.peepsight")
      end
    }


    -- use(
    --   { "projekt0n/github-nvim-theme",
    --     config = function()
    --       require("plugins.github-nvim-theme")
    --     end
    --   }
    -- )
    use { "catppuccin/nvim", as = "catppuccin" }


    use("github/copilot.vim")
    use({
      "ellisonleao/glow.nvim",
      config = function()
        require("plugins.glow")
      end,
    })
    use({ "wbthomason/packer.nvim" })
    -- colorscheme
    use({
      "folke/tokyonight.nvim",
      config = function()
        require("plugins.tokyonight")
      end,
    })
    use({
      "EdenEast/nightfox.nvim",
      config = function()
        require("plugins.nightfox")
      end,
    })
    use({
      "hoob3rt/lualine.nvim",
      -- after = "github-nvim-theme",
      config = function()
        require("plugins.lualine")
      end,
    })

    -- fuzzy finder
    use({
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" } },
      config = function()
        require("plugins.telescope")
      end,
    })

    -- treesitter
    use({ "windwp/nvim-ts-autotag", config = function() require "plugins.nvim-ts-autotag" end })
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      config = function()
        require("plugins.tree-sitter")
      end,
    })
    use({
      'nvim-treesitter/nvim-treesitter-context',
      config = function()
        require("plugins.treesitter-context")
      end,
    })
    use({ "RRethy/nvim-treesitter-endwise" })

    -- languages
    use({ "tpope/vim-rails", ft = { "ruby" } })
    use({ "rust-lang/rust.vim", ft = { "rs" } })

    -- tools
    use({
      "vim-skk/skkeleton",
      requires = { "vim-denops/denops.vim" },
      config = function()
        require("plugins.skkeleton")
      end,
    })
    use({
      "delphinus/skkeleton_indicator.nvim",
      config = function()
        require("skkeleton_indicator").setup({})
      end,
    })
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("plugins.indent-blankline")
      end,
    }) -- show indent
    -- use({ "haya14busa/vim-edgemotion" })
    -- use({ "t9md/vim-quickhl" }) -- for highlighting
    use({ "tpope/vim-surround" })
    use({ "junegunn/vim-easy-align" })
    use({
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end,
    }) -- plugin for comment out
    use({
      "akinsho/toggleterm.nvim",
      config = function()
        require("plugins.toggleterm")
      end,
    })
    use({
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup()
      end,
    })
    use({ "tpope/vim-repeat" })
    use({
      "petertriho/nvim-scrollbar",
      config = function()
        require("scrollbar").setup({})
      end,
    })
    -- use { 'ggandor/lightspeed.nvim' }
    use({
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup({})
      end,
    })
    use({
      "ziontee113/icon-picker.nvim",
      config = function()
        require("icon-picker")
      end,
    })

    use({
      'nvim-tree/nvim-tree.lua',
      config = function()
        require("plugins.nvim-tree")
      end
    })

    -- fern file explorer
    -- use({ "lambdalisue/fern.vim" })
    -- use({ "lambdalisue/fern-git-status.vim" })
    -- use({ "lambdalisue/nerdfont.vim" })
    -- use({ "lambdalisue/fern-renderer-nerdfont.vim" })
    -- use({ "lambdalisue/glyph-palette.vim" })
    -- use({ "antoinemadec/FixCursorHold.nvim" })

    -- assist moving cursor
    -- use { 'easymotion/vim-easymotion' }

    -- git
    -- use({
    -- 	"tanvirtin/vgit.nvim",
    -- 	requires = { "nvim-lua/plenary.nvim" },
    -- 	config = function()
    -- 		require("plugins.vgit")
    -- 	end,
    -- })
    use({
      'lewis6991/gitsigns.nvim',
      config = function()
        require("plugins.gitsign")
      end
    })
    use({ "kdheepak/lazygit.nvim" })
    use({ "lambdalisue/gina.vim" })
    use({ "lambdalisue/gin.vim" })
    use({
      "akinsho/git-conflict.nvim",
      tag = "*",
      config = function()
        require("git-conflict").setup()
      end,
    })
    use { 'TimUntersberger/neogit' }

    use({
      "j-hui/fidget.nvim",
      config = function()
        require("fidget").setup({})
      end,
    })
    -- use({ "fatih/vim-go", opt = true, ft = { "go" } })

    -- snippets
    use({ "SirVer/ultisnips" })
    use({ "honza/vim-snippets" })
    use({
      "nkakouros-original/numbers.nvim",
      config = function()
        require("numbers").setup()
      end,
    })
    use({ "previm/previm" })

    -- nvim-lsp
    use { 'ray-x/lsp_signature.nvim', config = function() require "lsp_signature".setup() end }
    use 'onsails/lspkind-nvim'
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'junegunn/vim-emoji' }
    use { 'folke/lsp-colors.nvim' }
    use { 'RRethy/vim-illuminate' }
    use { 'jose-elias-alvarez/null-ls.nvim', config = function() require 'plugins.null-ls' end,
      requires = { "nvim-lua/plenary.nvim" } }
    use { 'neovim/nvim-lspconfig', config = function() require 'plugins.lsp' end }
    use { 'MunifTanjim/prettier.nvim', config = function() require 'plugins.prettier' end }




    -- devicon
    use { 'nvim-tree/nvim-web-devicons' }
    -- cmp
    use { 'hrsh7th/nvim-cmp', config = function() require 'plugins.cmp' end }
    use 'hrsh7th/cmp-calc'
    use 'hrsh7th/cmp-omni'
    use 'hrsh7th/cmp-copilot'
    use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
    use { 'quangnguyen30192/cmp-nvim-ultisnips' }
    use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
    use { 'hrsh7th/cmp-emoji' }
    use { 'uga-rosa/cmp-dictionary', config = function() require 'plugins.dictionary' end }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'f3fora/cmp-spell'
    use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }
    use { 'aca/marp.nvim' }
  end,
  config = { display = { open_cmd = "leftabove 75vnew \\[packer\\]" }, max_jobs = 10 },
})
