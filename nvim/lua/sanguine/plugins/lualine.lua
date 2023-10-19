return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    -- transparency
    local custom_pywal = require("lualine.themes.pywal")
    custom_pywal.normal.c.bg = "None"

    lualine.setup({
      options = {
        theme = custom_pywal,
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
    })
  end,
}
