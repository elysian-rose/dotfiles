return {}
--[[ return {
  "xiyaowong/transparent.nvim",
  priority = 999, -- load before all plugins except pywal
  config = function()
    local transparent = require("transparent")

    transparent.clear_prefix("BufferLine")
    transparent.clear_prefix("@ibl")
    transparent.clear_prefix("Lazy")
    transparent.clear_prefix("NvimTree")

    transparent.setup({
      extra_groups = {
        "MsgArea",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "Pmenu",
        "CmpItemKind",
        "CmpItemAbbr",
        "CmpItemAbbrMatch",
        "lualine_a_inactive",
        "lualine_b_inactive",
        "lualine_c_inactive"
      },
    })

    -- make bufferline transparent
    -- vim.g.transparent_groups = vim.list_extend(
      -- vim.g.transparent_groups or {},
      -- vim.tbl_map(function(v)
        -- return v.hl_group
      -- end, vim.tbl_values(require("bufferline.config").highlights))
    -- )

  end,
} --]]
