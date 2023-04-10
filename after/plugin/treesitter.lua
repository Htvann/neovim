require 'nvim-treesitter.configs'.setup {
    -- ensure_installed = { "c", "lua", "vim", "help", "javascript", "tsx", "json", "regex" },
    ensure_installed = { "c", "lua", "vim", "javascript", "tsx", "json", "regex" },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = {}
    },
    indent = {
        enable = true,
        disable = {}
    },
    autotag = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    },
    context_commentstring = {
        enable = true
    },
    refactor = {
        highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
        },
        highlight_current_scope = { enable = true },
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = "grr",
            },
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>",
            },
        },
    },
}
require('template-string').setup({
    filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' }, -- filetypes where the plugin is active
    jsx_brackets = true, -- must add brackets to jsx attributes
    remove_template_string = false, -- remove backticks when there are no template string
    restore_quotes = {
        normal = [[']],
        jsx = [["]],
    },
})
