require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim' -- End install
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  -- Telescope plugin
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'tom-anders/telescope-vim-bookmarks.nvim'
  use 'MattesGroeger/vim-bookmarks'
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  -- End install

  --Wakatime
  use 'wakatime/vim-wakatime'

  -- Color schema plugin || theme
  use 'folke/tokyonight.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use { "catppuccin/nvim", as = "catppuccin" }
  use "olimorris/onedarkpro.nvim"
  use "sainnhe/sonokai"
  -- use 'rakr/vim-one'
  use({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  use { "catppuccin/nvim", as = "catppuccin" }
  -- End install

  -- Lsp plugin
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP

  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'cmp'.setup {
        snippet = {
          expand = function(args)
            require 'luasnip'.lsp_expand(args.body)
          end
        },
        sources = {
          { name = 'luasnip' },
          -- more sources
        },
      }
    end
  }
  use { 'saadparwaiz1/cmp_luasnip' }
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require('lspsaga').setup({})
    end,
  })
  use 'windwp/nvim-ts-autotag'
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*", run = "make install_jsregexp" })
  use 'jose-elias-alvarez/typescript.nvim'
  use "rafamadriz/friendly-snippets"
  -- End install

  -- Nerd Tree plugin
  -- use 'scrooloose/nerdtree'
  -- use 'ryanoasis/vim-devicons'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  -- End install

  -- TreeSistter Plugin
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'p00f/nvim-ts-rainbow'        -- rainbow bracket
  use 'axelvc/template-string.nvim' -- auto template string


  -- End install

  --  INFO: Status line Plugin
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- End Install

  -- Buffer line plugin
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'kazhala/close-buffers.nvim'
  -- End Install

  -- Completion Plugin
  use 'hrsh7th/nvim-compe'
  -- End Install
  --
  -- Git Plugin
  use 'tpope/vim-fugitive'
  -- End Install

  -- Git Plugin
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  -- End install
  -- Lsp kind plugin
  use 'onsails/lspkind.nvim'
  -- End install

  -- Zenmode install plugin
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  -- End install
  -- Comment plugin
  use {
    'numToStr/Comment.nvim'
  }

  -- End install

  -- Other plugin
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
  use 'j-hui/fidget.nvim'
  --[[ use({
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }) ]]
  -- use 'rcarriga/nvim-notify'
  -- End install

  -- NOTE: Codefolding
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
  -- End install

  -- NOTE: Chat GPt
  -- use({
  --     "jackMort/ChatGPT.nvim",
  --     requires = {
  --         "MunifTanjim/nui.nvim",
  --         "nvim-lua/plenary.nvim",
  --         "nvim-telescope/telescope.nvim"
  --     }
  -- })

  -- use 'glepnir/template.nvim'
  use 'akinsho/git-conflict.nvim'
  -- NOTE: Multi cursor
  use({
    'mg979/vim-visual-multi',
    branch = "master",
  })

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "lukas-reineke/cmp-rg"
  -- use { 'edluffy/hologram.nvim' }

  use "jose-elias-alvarez/null-ls.nvim"
end)
