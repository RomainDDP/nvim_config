local lsp_servers = {
	"lua_ls",
	"clangd",
	"svls"
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
		dependencies = { "hrsh7th/cmp-nvim-lsp" },

		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			for _, server in ipairs(lsp_servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end
		end,
	},
}
