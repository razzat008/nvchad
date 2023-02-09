local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close", "close buffer" },
    -- basic stuffs from theprimegen
    ["<C-u>"] = { "<C-u>zz", "move half page up" },
    ["<C-d>"] = { "<C-d>zz", "move half page down" },

    --split window
    ["<leader>sv"] = { "<C-w>v", "split vertically" },
  },
}

-- more keybinds!

return M
