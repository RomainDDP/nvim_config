return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},

	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},

		config = function()
			local cmp = require("cmp")
			local context = require("cmp.config.context")

			cmp.setup({

				enabled = function()
					-- Désactive la complétion dans les commentaires
					if context.in_treesitter_capture("comment") == true or context.in_syntax_group("Comment") then
						return false
					end
					return true
				end,

				completion = {
					completeopt = "menu,menuone,noinsert,noselect",
				},

				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
				}),

				sources = {
					{ name = "nvim_lsp" },
				},
			})
		end,
	},
}
