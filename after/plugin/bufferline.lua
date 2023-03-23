local bufferline = require('bufferline');

bufferline.setup({
  options = {
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#073642'
    }
  },
})

vim.keymap.set('n', 'L', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', 'H', '<Cmd>BufferLineCyclePrev<CR>', {})

local function next_buffer()
  local windows = vim.api.nvim_get_current_win()
  local current_buffer = vim.api.nvim_get_current_buf()
  require('bufferline').cycle( -1)
  vim.api.nvim_command(current_buffer .. 'bw')
end

vim.keymap.set('n', 'D', next_buffer, {})
