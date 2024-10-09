return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
      highlight = {
        enable = true,
      }
    },
  },
  {
    "onsails/lspkind.nvim",
    lazy = false
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    version = "v2.*",
    build = "make install_jsregexp"
  },
  {
    'stevearc/conform.nvim',
    lazy = false,
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false
  },
  {
    {
      'nvim-lualine/lualine.nvim',
      lazy = false,
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {} -- your configuration
  },
  {
    "olrtg/nvim-emmet",
    lazy = false,
    config = function()
      vim.keymap.set({ "n", "v" }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    lazy = false
  },
  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<C-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<C-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<C-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<C-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
    opts = {
      -- add any options here
    }
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false
  },
  {
    "AlphaTechnolog/pywal.nvim",
    lazy = false
  }, {
  "tpope/vim-obsession",
  lazy = false
}
}
