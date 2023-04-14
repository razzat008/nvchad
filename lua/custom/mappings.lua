local M = {}
--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")

M.general = {
  n = {
    ["Q"] = { "<nop>", "worst place in the universe" },

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
        local file_path = vim.fn.expand "%"
        local filename = vim.fn.expand("%:t"):match "^([^.]+)" .. ".out"

        local compile_cmd = string.format("clear && g++ -o %s %s && ./%s", filename, file_path, filename)

        require("nvterm.terminal").send(compile_cmd, "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

--M.harpoon = {
-- n = {
--   ["<leader>a"] = {
--     mark.add_file,
--   },
--
--   ["<c-e>"] = {
--     ui.toggle_quick_menu,
--   },
--
--   ["<c-s>"] = {
--     function()
--       ui.nav_file(1)
--     end,
--   },
--
--   ["<c-d>"] = {
--     function()
--       ui.nav_file(2)
--     end,
--   },
--
--   ["<c-f>"] = {
--     function()
--       ui.nav_file(3)
--     end,
--   },
--
--   ["<c-g>"] = {
--     function()
--       ui.nav_file(4)
--     end,
--   },
-- },
--}

-- -- more keybinds!

return M
