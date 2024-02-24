return {
  "sainnhe/sonokai",
  name = "sonokai",
  priority = 1000, -- load before other plugins
  config = function()
    -- load colorsheme
    vim.g.sonokai_style = "shusia"
    vim.g.sonokai_better_performance = 1
    vim.cmd.set "termguicolors"
    vim.cmd.colorscheme "sonokai"
  end,
}
