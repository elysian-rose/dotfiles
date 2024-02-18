return {
  "neanias/everforest-nvim",
  name = "everforest",
  priority = 1000, -- load before other plugins
  config = function()
    local everforest = require("everforest")
    everforest.setup({})
    -- load colorsheme
    -- vim.cmd.colorscheme "everforest"
    everforest.load()
  end,
}
