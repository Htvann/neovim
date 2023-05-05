require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"dockerls",
		"docker_compose_language_service",
	},
	automatic_installation = true,
})
