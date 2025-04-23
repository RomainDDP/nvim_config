return {
 	 -- the colorscheme should be available when starting Neovim
  	{
   	"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
      	vim.cmd([[colorscheme tokyonight]])
    	end,
  	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
	}
}
