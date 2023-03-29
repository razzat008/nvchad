local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close<cr>", "close buffer" },
    -- ["<C-w>"] = { ":close<cr>", "close buffer" },
    -- basic stuffs from theprimegen
    ["<C-u>"] = { "<C-u>zz", "move half page up" },
    ["<C-d>"] = { "<C-d>zz", "move half page down" },
    -- ["<C-w>"] = {
    --   function()
    --     require("nvchad_ui.tabufline").close_buffer()
    --   end,
    --   "close buffer",
    -- },

    --split window
    ["<leader>sv"] = { "<C-w>v", "split vertically" },
    -- lazygit
    -- ["<leader>lg"] = { "<cmd>lazygit<cr>","open lazygit" },
  },
}

M.nvterm = {
  n = {
    -- run c code
    ["<leader>gc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out", "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

-- -- more keybinds!

return M
