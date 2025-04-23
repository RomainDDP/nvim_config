return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
			ensure_installed = require("core.lsp_servers"),
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			local lspconfig = require("lspconfig")
			local servers = require("core.lsp_servers")

			-- Common capabilities
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Setup servers
			for _, server in ipairs(servers) do
				local opts = {
					capabilities = capabilities,
					settings = {},
				}

			lspconfig[server].setup(opts)
			end
		end,
	},
}

