require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"dockerls",
		"docker_compose_language_service",
		"jsonls",
		"solang",
		-- "solidity_ls_nomicfoundation",
	},
	automatic_installation = true,
})
