---@type MappingsTable
local M = {}


M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ce"] = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Venv" },
    ["<leader>fe"] = { "<cmd>HopWord<cr>", "Hop Word" },
    ["<leader>a"] = { "<cmd>AerialToggle!<CR>", "Open Aerial outline"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
