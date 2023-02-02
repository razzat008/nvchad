local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close", "close buffer" },

    --split window
    ["<leader>sv"] = { "<C-w>v", "split vertically" },
  },
}

-- more keybinds!

return M
