return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
      "MunifTanjim/nui.nvim",
    },
    lazy = false, -- ensure Neo-Tree loads eagerly
    opts = {
      -- Default options, add customization here as needed
      filesystem = {
        follow_current_file = true, -- Automatically focus the current file
        hijack_netrw_behavior = "open_default", -- Replace netrw functionality
      },
    },
  },
}

