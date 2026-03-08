local lsp_servers = {
	"lua_ls",
	"clangd",
}

return {
	"mason-org/mason-lspconfig.nvim",

	opts = {
		ensure_installed = lsp_servers,
	},

	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {},
		},

		"neovim/nvim-lspconfig",
	}
}
