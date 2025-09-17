return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent = true, -- Enable this to disable setting the background color
        styles = {
          sidebars = "transparent", -- style for sidebars, see below
          floats = "normal", -- style for floating windows
        },
      })
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      require("solarized").setup({
        transparent = {
          enabled = false,
          pmenu = true,
          normal = true,
          normalfloat = true,
          neotree = true,
          nvimtree = true,
          whichkey = true,
          telescope = true,
          lazy = true,
        },
        on_highlights = nil,
        on_colors = nil,
        palette = "solarized", -- solarized (default) | selenized
        variant = "spring", -- "spring" | "summer" | "autumn" | "winter" (default)
        error_lens = {
          text = false,
          symbol = false,
        },
        styles = {
          enabled = true,
          types = {},
          functions = {},
          parameters = {},
          comments = {},
          strings = {},
          keywords = {},
          variables = {},
          constants = {},
        },
        plugins = {
          treesitter = true,
          lspconfig = true,
          navic = true,
          cmp = true,
          indentblankline = true,
          neotree = true,
          nvimtree = true,
          whichkey = true,
          dashboard = true,
          gitsigns = true,
          telescope = true,
          noice = true,
          hop = true,
          ministatusline = true,
          minitabline = true,
          ministarter = true,
          minicursorword = true,
          notify = true,
          rainbowdelimiters = true,
          bufferline = true,
          lazy = true,
          rendermarkdown = true,
          ale = true,
          coc = true,
          leap = true,
          alpha = true,
          yanky = true,
          gitgutter = true,
          mason = true,
          flash = true,
        },
      })
      -- vim.cmd.colorscheme("solarized")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        -- transparent = {
        --   enabled = true,
        --   pmenu = true,
        --   normal = true,
        --   normalfloat = true,
        --   neotree = true,
        --   nvimtree = true,
        --   whichkey = true,
        --   telescope = true,
        --   lazy = true,
        -- },
        transparent = true, -- Enable this to disable setting the background color
        styles = {
          sidebars = "transparent", -- style for sidebars, see below
        },
      })
      vim.cmd("colorscheme tokyonight-storm")
    end,
  },
}
