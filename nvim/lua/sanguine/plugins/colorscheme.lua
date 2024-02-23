return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  priority = 1000, -- load before other plugins
  config = function()
    local tokyonight = require("tokyonight")
    tokyonight.setup({
      style = "moon",
      transparent = "true",
    })
    -- load colorsheme
    vim.cmd.colorscheme "tokyonight"
  end,
}
