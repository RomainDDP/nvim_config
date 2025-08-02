return {
	"mason-org/mason-lspconfig.nvim",

	opts = {
		ensure_installed = { "lua_ls"},
	},

	dependencies = {
		{
			"mason-org/mason.nvim", opts = {}
		},
		{
			"neovim/nvim-lspconfig",
			keys = {
				{"<Leader>ca", vim.lsp.buf.code_action},
			}
		}
	},
}
