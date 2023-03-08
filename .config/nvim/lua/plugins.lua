local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  { "folke/which-key.nvim", lazy = true },
  "soramugi/auto-ctags.vim",
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
            ["core.defaults"] = {},       -- Loads default behaviour
            ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.norg.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  { "folke/neoconf.nvim",   cmd = "Neoconf" },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufEnter",
    config = function()
      require("plugins.tree-sitter")
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require("plugins.treesitter-context")
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",

    }
  },
  {
    "RRethy/nvim-treesitter-endwise",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",

    }
  },
  "folke/neodev.nvim",
  { 'liuchengxu/vista.vim', cmd = "Vista" },
  { 'onsails/lspkind-nvim', dependencies = "hrsh7th/nvim-cmp" },

  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "cshuaimin/ssr.nvim",
    -- init is always executed during startup, but doesn't load the plugin yet.
    init = function()
      vim.keymap.set({ "n", "x" }, "<leader>cR", function()
        -- this require will automatically load the plugin
        require("ssr").open()
      end, { desc = "Structural Replace" })
    end,
  },
  {
    "dstein64/vim-startuptime",
    -- lazy-load on a command
    cmd = "StartupTime",
  },
  {
    "github/copilot.vim",
    event = "InsertEnter"
  },


  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-omni',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'quangnguyen30192/cmp-nvim-ultisnips',
      'hrsh7th/cmp-nvim-lsp-document-symbol',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'f3fora/cmp-spell',
      'hrsh7th/cmp-copilot'
      -- 'uga-rosa/cmp-dictionary', config = function() require 'plugins.dictionary' end } #TODO
    },
    config = function()
      require 'plugins.cmp'
    end,
  },
  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic"
    },
    config = function() require("barbecue").setup() end
  },

  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {

      }
    end
  },
  {
    "numToStr/Navigator.nvim",
    config = function() require("plugins.navigator") end
  },

  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("plugins.bufferline")
    end
  },

  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
    event = "BufEnter"
  },
  {
    'koenverburg/peepsight.nvim',
    config = function()
      require("plugins.peepsight")
    end,
    dependencies = 'nvim-treesitter/nvim-treesitter'
  },

  {
    "hoob3rt/lualine.nvim",
    config = function()
      require("plugins.lualine")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    -- lazy=true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end,
  },
  { "stevearc/dressing.nvim", event = "VeryLazy" },

  {
    "windwp/nvim-ts-autotag",
    config = function() require "plugins.nvim-ts-autotag" end,
    event = "InsertEnter",
    ft = { "html", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue", "markdown" }
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.toggleterm")
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
    event = "BufEnter"
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
    event = "InsertEnter",
  },
  { "tpope/vim-repeat",       event = "BufEnter" },
  { "tpope/vim-rails",        ft = { "ruby" } },
  { "rust-lang/rust.vim",     ft = { "rs" } },

  {
    "nkakouros-original/numbers.nvim",
    config = function()
      require("numbers").setup()
    end,
  },
  {
    "vim-skk/skkeleton",
    dependencies = { "vim-denops/denops.vim" },
    event = "InsertEnter",
    config = function()
      require("plugins.skkeleton")
    end,
  },
  {
    "delphinus/skkeleton_indicator.nvim",
    config = function()
      require("skkeleton_indicator").setup({})
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.indent-blankline")
    end,
  },
  { "haya14busa/vim-edgemotion", event = "BufEnter" },
  { "t9md/vim-quickhl",          event = "BufEnter" },
  { "tpope/vim-surround",        event = "InsertEnter" },
  { "junegunn/vim-easy-align",   event = "BufEnter" },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup({})
    end,
  },
  -- use { 'ggandor/lightspeed.nvim' }
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({})
    end,
  },
  {
    "ziontee113/icon-picker.nvim",
    event = "BufEnter",
    config = function()
      require("icon-picker")
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    config = function()
      require("plugins.nvim-tree")
    end
  },

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("plugins.gitsign")
    end
  },
  { "kdheepak/lazygit.nvim", cmd = "Lazygit" },
  { "lambdalisue/gina.vim",  cmd = "Gina" },
  { "lambdalisue/gin.vim",   cmd = "Gin" },
  {
    "akinsho/git-conflict.nvim",
    config = function()
      require("git-conflict").setup()
    end,
    event = "BufEnter"
  },
  {
    'TimUntersberger/neogit',
    cmd = "Neogit"
  },

  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end,
  },
  -- use({ "fatih/vim-go", opt = true, ft = { "go" } })

  -- snippets
  { "SirVer/ultisnips",         event = "InsertEnter" },
  { "honza/vim-snippets",       event = "InsertEnter" },
  { "previm/previm",            event = "BufEnter" },

  -- nvim-lsp
  { 'ray-x/lsp_signature.nvim', config = function() require "lsp_signature".setup() end },
  { 'williamboman/mason.nvim',  dependencies = { 'williamboman/mason-lspconfig.nvim' } },
  { 'junegunn/vim-emoji' },
  { 'folke/lsp-colors.nvim' },
  { 'RRethy/vim-illuminate',    event = "BufEnter" },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require 'plugins.null-ls' end,
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { 'neovim/nvim-lspconfig',     config = function() require 'plugins.lsp' end },
  { 'MunifTanjim/prettier.nvim', config = function() require 'plugins.prettier' end, event = "BufEnter" },
  { 'rinx/cmp-skkeleton',        dependencies = { 'nvim-cmp', 'skkeleton' },         event = "InsertEnter" },
  { 'aca/marp.nvim' },

  {
    "fatih/vim-go", ft = { "go" }
  },
  -- {
  --   "sunjon/shade.nvim", config=true
  -- },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      local dashboard = require('dashboard')
      local pokemon = require('pokemon')
      pokemon.setup({
        number = 'random',
        size = 'auto',
      })
      dashboard.setup {
        config = {
          header = pokemon.header()
        }
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons', 'ColaMint/pokemon.nvim' } },
  },
  {
    "monaqa/dial.nvim", event = "BufEnter", config = function() require('plugins.dial') end
  }
})
