return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require("bufferline")
    local mocha = require("catppuccin.palettes").get_palette "mocha"

    bufferline.setup({
      options = {
        -- shift bufferline when nvim-tree is open
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        indicator = { style = "none" }
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get {
        styles = { "italic", "bold" },
        custom = {
            all = {
                fill = { bg = "#000000" },
            },
            mocha = {
                background = { fg = mocha.text },
            },
            latte = {
                background = { fg = "#000000" },
            },
        },
      },
    })

    -- keymaps
    local keymap = vim.keymap -- concise
    keymap.set("n", "<S-l>", ":bnext<CR>") -- switch to next buffer
    keymap.set("n", "<S-h>", ":bprevious<CR>") -- switch to prev buffer
    keymap.set("n", "<S-q>", ":bdelete<CR>") -- close current buffer
  end,
}
