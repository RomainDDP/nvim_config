return {
	'Bekaboo/dropbar.nvim',
	dependencies = {
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make'
	},
	lazy = false,

	keys = {
		{ "<leader>;",
			function ()
				require('dropbar.api').pick()
			end,
		},
	},
}
