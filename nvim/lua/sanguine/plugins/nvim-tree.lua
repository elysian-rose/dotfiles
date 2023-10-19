return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended nvim-tree settings
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- no show .DS_Store files
    -- and don't ignore git files
    nvimtree.setup({
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- keybinds
    local keymap = vim.keymap -- concise

    keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")

  end,
}
