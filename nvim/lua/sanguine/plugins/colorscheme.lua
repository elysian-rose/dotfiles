return {
  "AlphaTechnolog/pywal.nvim",
  priority = 1000, -- load before other plugins
  config = function()
    -- load colorsheme
    vim.cmd.colorscheme "pywal"
  end,
}
