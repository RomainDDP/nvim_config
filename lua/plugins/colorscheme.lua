return {
	"savq/melange-nvim",
	lazy = false,
	name = "melange", 	-- Je crois pas nécessaire mais sait-on jamais.
	priority = 1000, 	-- Important de le charger dès le lancement de NVIM ! 
	config = function()
		vim.cmd.colorscheme "melange"
	end,
}
