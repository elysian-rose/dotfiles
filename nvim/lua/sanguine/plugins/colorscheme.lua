return {
  "rose-pine/nvim",
  name = "rose-pine",
  priority = 1000, -- load before other plugins
  config = function()
    -- load colorsheme
    vim.cmd.colorscheme "rose-pine"
  end,
}
