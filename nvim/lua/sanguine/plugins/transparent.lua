return {
  "xiyaowong/transparent.nvim",
  priority = 999, -- load before all plugins except pywal
  config = function()
    local transparent = require("transparent")

    transparent.clear_prefix("BufferLine")
    transparent.clear_prefix("NvimTree")

    transparent.setup({
      extra_groups = {
        "MsgArea",
        "NormalFloat",
        "TelescopeNormal",
        "TelescopeBorder",
        "IndentBlankLineChar",
        "Pmenu",
        "CmpItemKind",
        "CmpItemAbbr",
        "CmpItemAbbrMatch"
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
}
