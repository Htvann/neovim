-- Load extension
require("telescope").load_extension "file_browser"
require('telescope').load_extension('media_files')

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end




-- keymap
local keymap = vim.keymap.set
keymap('n', '\'', '<cmd> Telescope live_grep<cr>')
keymap('n', ';', '<cmd> Telescope find_files<cr>')
-- keymap('n', 'ge', '<cmd> Telescope file_browser select_buffer=true<CR>')



local actions = require('telescope.actions')
local fb_actions = require "telescope".extensions.file_browser.actions
require("telescope").load_extension "file_browser"
require("telescope").setup {
    defaults = {
        file_ignore_patterns = { "node_modules","build", "android", "ios", "package-lock.json", "yarn.lock", "*.png", "*.svg" },
        mappings = {
            i = {
                -- press ; to close popup
                [";"] = actions.close
            }
        }
    },
    pickers = {
        -- Your special builtin config goes in here
        buffers = {
            sort_lastused = true,
            theme = "dropdown",
            previewer = false,
            mappings = {
            }
        },
        find_files = {
            theme = "dropdown"
        }
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = false,
            grouped = true,
            initial_mode = "normal",
            layout_config = { height = 40 },
            git_status = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["c"] = fb_actions.create,
                    ["d"] = fb_actions.remove,
                    ["m"] = fb_actions.move,
                    ["r"] = fb_actions.rename,
                    ["y"] = fb_actions.copy,
                    ["h"] = fb_actions.goto_cwd
                },
            },
        },
    }
}
