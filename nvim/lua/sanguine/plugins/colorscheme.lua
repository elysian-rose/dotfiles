return {
  -- "rose-pine/nvim",
  -- name = "rose-pine",
  "EdenEast/nightfox.nvim",
  name = "nightfox",
  priority = 1000, -- load before other plugins
  config = function()
    -- load colorsheme
    -- vim.cmd.colorscheme "rose-pine"
    vim.cmd.colorscheme "duskfox"
  end,
}
