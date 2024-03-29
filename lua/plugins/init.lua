-- Lazy plugin table export

local M = {
  -- Global plugins
  { "nvim-lua/plenary.nvim" },


  -- { 'echasnovski/mini.nvim', version = '*', lazy = false, priority = 300,
  -- config = function() 
  --     require("mini.nvim").setup({})
  --   end
  -- },
  { "windwp/nvim-autopairs", config = function() require('nvim-autopairs').setup() end },
  { "ms-jpq/coq_nvim", branch = "coq", config = function() require('coq') end },

  { "j-morano/buffer_manager.nvim",lazy = false },

  -- Colorschemes
  { "bluz71/vim-nightfly-guicolors" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { "kdheepak/monochrome.nvim" },
  { "sainnhe/gruvbox-material" },
  { "savq/melange-nvim" },
  { "andweeb/presence.nvim" },
  { "BurntSushi/ripgrep" },
  -- Current Theme
  { "marko-cerovac/material.nvim" },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  -- {
  --   "kevinhwang91/nvim-bqf",
  --   config = function()
  --       require("kevinhwang91/nvim-bqf").setup({
  --           -- Configuration here, or leave empty to use defaults
  --       })
  --   end,
  --   ft = 'qf'
  -- },
 {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({--[[ your config ]]})
    end,
  },
  -- { "ggandor/leap.nvim" },
  {"ramojus/mellifluous.nvim"},
  -- Comments
  { 
    "numToStr/Comment.nvim",
    lazy = false,
    priority = 100,
    config = function()
      require("Comment").setup()
    end,
  },

  -- Nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    priority = 100,
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = false, priority = 200 },

  -- status line
  { 
    "nvim-lualine/lualine.nvim",
    lazy = false,
    priority = 100,
    config = function()
      require("lualine").setup({
      })
    end,
  },
  
  { 
    "nvim-telescope/telescope-fzf-native.nvim", 
    run = "make",
    lazy = false,
    priority = 200,
  },
  { 
    "nvim-telescope/telescope.nvim", 
    branch = "0.1.x",
    lazy = false,
    priority = 200,
  },
}
return M
