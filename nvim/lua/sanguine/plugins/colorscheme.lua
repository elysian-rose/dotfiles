return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        cmp = true,
        nvimtree = true,
      },
    })
    -- load colorsheme
    vim.cmd.colorscheme "catppuccin"
  end,
}
