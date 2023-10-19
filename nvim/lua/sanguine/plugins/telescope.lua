return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to  previous result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- concise

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
  end,
}
