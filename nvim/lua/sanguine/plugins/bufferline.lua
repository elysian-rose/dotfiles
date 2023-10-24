return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        -- shift bufferline when nvim-tree is open
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      }
    })

    -- keymaps
    local keymap = vim.keymap -- concise
    keymap.set("n", "<S-l>", ":bnext<CR>") -- switch to next buffer
    keymap.set("n", "<S-h>", ":bprevious<CR>") -- switch to prev buffer
    keymap.set("n", "<S-q>", ":bdelete<CR>") -- close current buffer
  end,
}
