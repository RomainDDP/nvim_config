-- Autocommands (run commands automatically based on events)

-- Fct test les fichiers en Lua.
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.lua",
  callback = function()
    -- print("Lua file saved!")
  end,
})
