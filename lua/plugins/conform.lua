return {
    "stevearc/conform.nvim",

    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
            },

        })

        vim.keymap.set("n", "<leader>fm", function()
            local has_formatter = conform.list_formatters_for_buffer(0)
            if #has_formatter == 0 then
                vim.notify("Aucun formatter disponible pour ce buffer", vim.log.levels.WARN)
                return
            end

            conform.format({
                async = true,
                lsp_fallback = false,
            })
        end, { silent = true })
    end,
}
