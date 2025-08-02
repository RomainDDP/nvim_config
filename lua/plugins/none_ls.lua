return {
	"nvimtools/none-ls.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},


	-- Pas nécessaire en fait ?!
	--opts = function()
	--		local null_ls = require("null-ls")
	--
	--		return {
	--			sources = {
	--				-- null_ls.builtins.formatting.clang_format,
	--			},
	--		}
	--	end,	
	keys = {
		{ "<leader>fm", vim.lsp.buf.format },
	}
}
