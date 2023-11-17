-- Lazy plugin table export
local M = {
  -- Global plugins
  { "nvim-lua/plenary.nvim" },
  
  -- Colorschemes
  { "bluz71/vim-nightfly-guicolors" },

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
      local lualine_nightfly = require("lualine.themes.nightfly")

      -- new colors for theme
      local new_colors = {
        blue = "#65D1FF",
        green = "#3EFFDC",
        violet = "#FF61EF",
        yellow = "#FFDA7B",
        black = "#000000",
      }

      -- change nightlfy theme colors
      lualine_nightfly.normal.a.bg = new_colors.blue
      lualine_nightfly.insert.a.bg = new_colors.green
      lualine_nightfly.visual.a.bg = new_colors.violet
      lualine_nightfly.command = {
        a = {
          gui = "bold",
          bg = new_colors.yellow,
          fg = new_colors.black, -- black
        },
      }

      -- configure lualine with modified theme
      require("lualine").setup({
        options = {
          theme = lualine_nightfly,
        },
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
  -- {
  --   "hrsh7th/nvim-cmp",
  --   lazy = false,
  --   priority = 200,
  -- },
  -- {
  --   "hrsh7th/cmp-buffer",
  --   lazy = false,
  --   priority = 200,
  -- },
  -- {
  --   "hrsh7th/cmp-path",
  --   lazy = false,
  --   priority = 200,
  -- },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   lazy = false,
  --   priority = 200,
  --
  -- },
  -- {
  --   "saadparwaiz1/cmp_luasnip",
  --   lazy = false,
  --   priority = 200,
  --
  -- },
  -- {
  --   "rafamadriz/friendly-snippets",
  --   lazy = false,
  --   priority = 200,
  -- },
}
return M
