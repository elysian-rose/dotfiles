return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({})
    -- load colorsheme
    -- vim.cmd.set "termguicolors"
    vim.cmd.colorscheme "catppuccin"
  end,
}
