local M = {}

M.general = {
  n = {
    ["Q"] = { "<nop>", "worst place in the universe" },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close<cr>", "close buffer" },
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
  },
}

M.nvterm = {
  n = {
    -- run c code
    ["<leader>gc"] = {
      function()
        local file_path = vim.fn.expand "%"
        local filename = vim.fn.expand("%:t"):match "^([^.]+)" .. ".out"

        local compile_cmd = string.format("clear && g++ -o %s %s && ./%s", filename, file_path, filename)

        require("nvterm.terminal").send(compile_cmd, "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

-- -- more keybinds!
M.nvimtree = {
  plugin = true,
  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- toggle
    ["<C-n>"] = { "<nop>", "toggle nvimtree" },
  },
}

return M
