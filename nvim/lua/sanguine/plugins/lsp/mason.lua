return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_null_ls = require("mason-null-ls")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
      },

      automatic_installation = true,
    })

    mason_null_ls.setup({
      ensure_installed = {
        "stylua",
      },
      automatic_installation = true,
    })
  end,
}
