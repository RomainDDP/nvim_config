-- Options générales
vim.opt.number = true          		-- Nombre des lignes
vim.opt.relativenumber = true  		-- Nombre relatif des lignes
vim.opt.cursorline = true      		-- Surligne la ligne courante
vim.opt.expandtab = false       	-- Espace au lieu de vrai tab
vim.opt.tabstop = 4            		-- Nb espace pour un tab
vim.opt.shiftwidth = 4         		-- Taille indentation
vim.opt.smartindent = true     		-- Auto-indentation
vim.opt.wrap = false           		-- Désactive line wrapping
vim.opt.ignorecase = true      		-- Ignore case dans les recherches
vim.opt.smartcase = true       		-- Zappe ignorecase si uppercase dans la recherche
vim.opt.termguicolors = true 		-- 24-bit RGB colors.
vim.opt.clipboard = "unnamedplus" 	-- utilise le clipboard du système.
vim.g.clipboard = {
  name = "wl-clipboard (Wayland)",
  copy = {
    ["+"] = "wl-copy --foreground --type text/plain",
    ["*"] = "wl-copy --foreground --type text/plain",
  },
  paste = {
    ["+"] = "wl-paste --no-newline",
    ["*"] = "wl-paste --no-newline",
  },
  cache_enabled = true,
}



vim.g.mapleader = "M"				-- LEADER key, super important !
vim.g.maplocalleader = ";"			-- local LEADER key, askip important jsp ça.
