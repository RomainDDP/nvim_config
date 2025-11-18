return {
	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},

	-- LSP source for cmp
	{ "hrsh7th/cmp-nvim-lsp" },

	-- Completion engine
	{
		"hrsh7th/nvim-cmp",

		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.scroll_docs(-4),
					["<C-n>"] = cmp.mapping.scroll_docs(4),
					["<C-f>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),

				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
