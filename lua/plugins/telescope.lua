local custom_maps = {
	i = {
		["<esc>"] = false,
		["<esc>"] = require('telescope.actions').close,
		["<C-c>"] = false,
	},
}


return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>"},
		{ "<leader>fg", "<cmd>Telescope live_grep<CR>"},
	},

	-- Haha custom mappings goes brrrr >:)
	-- Écrase les maps de base de Telescope et + complexe que des simple keymaps,
	-- donc pas envisageable de les mettre dans keys.
	opts = {
		pickers = {
			find_files = {
				mappings = custom_maps,
			},

			live_grep = {
				mappings = custom_maps,
			},
		},
	},
}
