-- Autocommands (run commands automatically based on events)

-- for line break if too long, and only on certain filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.md", "*.txt", "*.log" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.breakindent = true
		vim.opt_local.showbreak = "↪ "
		vim.opt_local.colorcolumn = "80"
	end,
})
