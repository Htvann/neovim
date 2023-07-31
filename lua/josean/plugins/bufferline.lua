local bufferline = require("bufferline")
bufferline.setup({
  options = {
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
  },
})

vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>", {})

local function next_buffer()
  local windows = vim.api.nvim_get_current_win()
  local current_buffer = vim.api.nvim_get_current_buf()
  require("bufferline").cycle(-1)
  vim.api.nvim_command(current_buffer .. "bw")
end

vim.keymap.set("n", "<leader>D", next_buffer, {})
