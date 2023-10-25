return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- load before other plugins
  config = function()
    -- load colorsheme
    vim.cmd.colorscheme "catppuccin"
  end,
}
