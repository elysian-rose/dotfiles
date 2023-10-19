return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    -- import nvim-treesitterplugin
    local treesitter = require("nvim-treesitter.configs")

    --config treesitter
    treesitter.setup({
      -- enable syntax highlighting
      highlight = {
                enable = true,
      },
      -- enable indentation
      indent = {
        enable = true,
      },
      -- parsers that treesitter ensures are installed
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
      },
      -- auto install language parsers
      auto_install = true,
    })
  end,
}
