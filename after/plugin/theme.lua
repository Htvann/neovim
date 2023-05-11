vim.fn.sign_define({
	{
		name = "DiagnosticSignError",
		text = "",
		texthl = "DiagnosticSignError",
		linehl = "ErrorLine",
	},
	{
		name = "DiagnosticSignWarn",
		text = "",
		texthl = "DiagnosticSignWarn",
		linehl = "WarningLine",
	},
	{
		name = "DiagnosticSignInfo",
		text = "",
		texthl = "DiagnosticSignInfo",
		linehl = "InfoLine",
	},
	{
		name = "DiagnosticSignHint",
		text = "",
		texthl = "DiagnosticSignHint",
		linehl = "HintLine",
	},
})

require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = {
		light = "latte",
		dark = "mocha",
	},
	transparent_background = true,
	show_end_of_buffer = true, -- show the '~' characters after the end of buffers
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 1,
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		notify = false,
		mini = false,
	},
})

require("onedarkpro").setup({
	options = {
		cursorline = true, -- Use cursorline highlighting?
		transparency = true, -- Use a transparent background?
	},
})

-- setup must be called before loading
-- vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd.colorscheme("onedark")
