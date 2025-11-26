return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local null_ls = require("null-ls")

		local formatters = {
			"stylua",
			"verible_verilog_format",
			-- "black",
			-- "isort",
			-- "prettierd",
			-- "clang_format",
		}

		-- Conversion auto → builtins.formatting.<tool>
		local sources = {}
		for _, name in ipairs(formatters) do
			local builtin = null_ls.builtins.formatting[name]
			if builtin then
				table.insert(sources, builtin)
			else
				vim.notify("Formatter inconnu dans null-ls : " .. name, vim.log.levels.WARN)
			end
		end

		null_ls.setup({
			sources = sources,

			-- keymap on attach de cette façon elle n'existe pas si il n'y a pas de formatter dispo.
			on_attach = function(client, bufnr)
				vim.keymap.set(
					"n",
					"<leader>fm",
					function()
						vim.lsp.buf.format({ async = true })
					end,
					{ buffer = bufnr, silent = true }
				)
			end,
		})
	end,
}
