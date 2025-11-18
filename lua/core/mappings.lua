local map = vim.keymap.set
local opts = { silent = true }

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "²", "<cmd>Neotree toggle<cr>", opts)
map("n", "<leader>md", "<cmd>RenderMarkdown toggle<cr>", opts)
