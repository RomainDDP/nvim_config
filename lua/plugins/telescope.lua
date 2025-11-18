return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	-- Haha custom mappings goes brrrr >:)
	-- Écrase les maps de base de Telescope et + complexe que des simple keymaps,
	-- donc pas envisageable de les mettre dans keys.
	--[[
	opts = {
		pickers = {
			find_files = {
				mappings = {
				i = {
					["<esc>"] = false,
					["<esc>"] = require('telescope.actions').close,
					["<C-c>"] = false,
				},
			},
			},
			live_grep = {
				mappings = {
				i = {
					["<esc>"] = false,
					["<esc>"] = require('telescope.actions').close,
					["<C-c>"] = false,
					},
				},
			},
		},
	}
]] --
}
