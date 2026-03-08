local map = vim.keymap.set
local opts = { silent = true }

-- Clear le highlight de la recherche etc.
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

map("n", "²", "<cmd>Neotree toggle<cr>", opts)
map("n", "<leader>md", "<cmd>RenderMarkdown toggle<cr>", opts)

-- Mappings Telescope.
map("n", "<leader>ff", 	"<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", 	"<cmd>Telescope live_grep<CR>",	opts)
map("n", "<leader>fb",	"<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fo",	"<cmd>Telescope oldfiles<CR>", opts)
map("n", "<leader>fs",	"<cmd>Telescope lsp_document_symbols<CR>", opts)

-- Mappings LSP 
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gD", vim.lsp.buf.declaration, opts)
map("n", "gi", vim.lsp.buf.implementation, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

