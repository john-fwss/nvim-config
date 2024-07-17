-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "doomchad",

  statusline = {
    modules = {
      cursor = function()
        return "%#St_pos_sep#" .. "%#St_pos_icon# Ln %l, Col %c  "
      end,
    },
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
