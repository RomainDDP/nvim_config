return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- Pour les petites icones de fichiers !
			"MunifTanjim/nui.nvim",
		},
		lazy = false, -- Neo-Tree se lazy load par lui même. 
		config = function ()
			vim.keymap.set("n", "²", ":Neotree toggle<CR>", { silent = true, noremap = true })
		end


	},
}

