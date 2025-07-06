-- Set leader key
vim.g.mapleader = " " -- Space as leader

-- Define key mappings
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Basic Keymaps
keymap("n", "<leader>w", ":w<CR>", opts)       -- Save
keymap("n", "<leader>q", ":q<CR>", opts)       -- Quit
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- File explorer

-- Telescope keymaps
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- Find files
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)  -- Search in files

-- Leap keymaps. :h leap-custom-mappings if needed.
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')

-- Neo Tree keymap
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true, noremap = true })

