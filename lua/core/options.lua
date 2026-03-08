-- Désactive netrw parce que Neotree est plus efficace.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Options générales
vim.opt.number = true             -- Nombre des lignes
vim.opt.relativenumber = true     -- Nombre relatif des lignes
vim.opt.cursorline = true         -- Surligne la ligne courante
vim.opt.tabstop = 2               -- Nb espace pour un tab
vim.opt.shiftwidth = 4            -- Taille indentation
vim.opt.smartindent = true        -- Auto-indentation
vim.opt.wrap = false              -- Désactive line wrapping
vim.opt.ignorecase = true         -- Ignore case dans les recherches
vim.opt.smartcase = true          -- Zappe ignorecase si uppercase dans la recherche
vim.opt.termguicolors = true      -- 24-bit RGB colors.
vim.opt.clipboard = "unnamedplus" -- utilise le clipboard du système.
vim.g.mapleader = ";"      -- LEADER key, super important !
vim.g.maplocalleader = "," -- local LEADER key, askip important jsp ça.

