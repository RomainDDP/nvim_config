local lsp_servers = {
	"lua_ls",
	"pylsp",
	"clangd",
}

return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",

		opts = {
			ensure_installed = lsp_servers,
		},
	},

	{
		"neovim/nvim-lspconfig",
	},
}
