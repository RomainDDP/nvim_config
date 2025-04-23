return {

	{
		"folke/noice.nvim",
		event = "VeryLazy",
	  	dependencies = {
		"MunifTanjim/nui.nvim",
		},

		config = function ()
			require("noice").setup({
  			lsp = {
    			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    			override = {
      			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      			["vim.lsp.util.stylize_markdown"] = true,
      			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    			},
  			},
		  	presets = {
				bottom_search = true, -- use a classic bottom cmdline for search
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false, -- add a border to hover docs and signature help
		  },
		})
		end
	},

	{
  		"doctorfree/cheatsheet.nvim",
  		event = "VeryLazy",
  		dependencies = {
    		{ "nvim-telescope/telescope.nvim" },
    		{ "nvim-lua/popup.nvim" },
    		{ "nvim-lua/plenary.nvim" },
  		},
  		config = function()
    		local ctactions = require("cheatsheet.telescope.actions")
    		require("cheatsheet").setup({
      	bundled_cheetsheets = {
        		enabled = { "default", "lua", "markdown", "regex", "netrw", "unicode" },
        		disabled = { "nerd-fonts" },
      	},
      	bundled_plugin_cheatsheets = {
        		enabled = {
					"auto-session",
					"goto-preview",
					"octo.nvim",
					"telescope.nvim",
					"vim-easy-align",
					"vim-sandwich",
        		},
        		disabled = { "gitsigns" },
      	},
      	include_only_installed_plugins = true,
      	telescope_mappings = {
        		["<CR>"] = ctactions.select_or_fill_commandline,
        		["<A-CR>"] = ctactions.select_or_execute,
        		["<C-Y>"] = ctactions.copy_cheat_value,
        		["<C-E>"] = ctactions.edit_user_cheatsheet,
      	},
    		})
  		end,
	},
	{
   	'Bekaboo/dropbar.nvim',
    	dependencies = {
      	'nvim-telescope/telescope-fzf-native.nvim',
      	build = 'make'
    	},
    	config = function()
      	local dropbar_api = require('dropbar.api')
      	vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
      	vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
      	vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    	end
	},
	{
  		"folke/todo-comments.nvim",
  		dependencies = { "nvim-lua/plenary.nvim" },
	},
}
