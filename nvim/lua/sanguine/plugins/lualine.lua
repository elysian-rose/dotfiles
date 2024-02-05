return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "catppuccin",
        disabled_filetypes = { "Lazy" },
      },
      sections = {
        lualine_y = {
          {
            "datetime",
            -- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
            style = "default"
          },
        },

        lualine_z = {
          "progress",
          "location",
        },
      },
      extensions = { "nvim-tree" }
    })
  end,
}
