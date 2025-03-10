-- import gitsigns plugin safely
-- local setup, gitsigns = pcall(require, "gitsigns")
-- if not setup then
--   return
-- end

-- gitsigns.setup({
--   signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
--   numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
--   linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
--   word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
--   watch_gitdir = {
--     interval = 1000,
--     follow_files = true,
--   },
--   attach_to_untracked = true,
--   current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
--   current_line_blame_opts = {
--     virt_text = true,
--     virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
--     delay = 1000,
--     ignore_whitespace = false,
--   },
--   current_line_blame_formatter = "🐶 <author>, <author_time:%Y-%m-%d> - <summary>",
--   sign_priority = 6,
--   update_debounce = 100,
--   status_formatter = nil, -- Use default
--   max_file_length = 40000, -- Disable if file is longer than this (in lines)
--   preview_config = {
--     -- Options passed to nvim_open_win
--     border = "single",
--     style = "minimal",
--     relative = "cursor",
--     row = 0,
--     col = 1,
--   },
--   yadm = {
--     enable = false,
--   },
--   on_attach = function(bufnr)
--     local function map(mode, lhs, rhs, opts)
--       opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
--       vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
--     end
--
--     -- Navigation
--     map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
--     map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })
--
--     -- Actions
--     map("n", "gu", ":Gitsigns reset_hunk<CR>")
--     map("v", "gu", ":Gitsigns reset_hunk<CR>")
--     map("n", "gs", ":Gitsigns preview_hunk<CR>")
--     map("n", "gb", '<cmd>lua require"gitsigns".blame_line{full=false}<cr>')
--     map("n", "g1", "<cmd>Gitsigns diffthis<CR>")
--
--     -- Text object
--     map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>")
--     map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>")
--   end,
-- })
--

require("git-conflict").setup({
  default_mappings = true, -- disable buffer local mapping created by this plugin
  default_commands = true, -- disable commands created by this plugin
  disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
  highlights = { -- They must have background color, otherwise the default color will be used
    incoming = "DiffText",
    current = "DiffAdd",
  },
})

require("gitsigns").setup({
  signs = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged_enable = true,
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true,
  },
  auto_attach = true,
  attach_to_untracked = false,
  -- current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },

  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend("force", { noremap = true, silent = true }, opts or {})
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map("n", "]c", "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true })
    map("n", "[c", "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true })

    -- Actions
    map("n", "gu", ":Gitsigns reset_hunk<CR>")
    map("v", "gu", ":Gitsigns reset_hunk<CR>")
    map("n", "gs", ":Gitsigns preview_hunk<CR>")
    map("n", "gb", '<cmd>lua require"gitsigns".blame_line{full=false}<cr>')
    map("n", "g1", "<cmd>Gitsigns diffthis<CR>")

    -- Text object
    map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>")
    map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>")
  end,
})
