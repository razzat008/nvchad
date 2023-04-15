local M = {}

M.general = {
  n = {
    ["Q"] = { "<nop>", "worst place in the universe" },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>cx"] = { "<cmd>!chmod +x %<cr>", "make current bash file executable", opts = { silent = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close<cr>", "close buffer" },
    -- basic stuffs from theprimegen
    ["<C-u>"] = { "<C-u>zz", "move half page up" },
    ["<C-d>"] = { "<C-d>zz", "move half page down" },

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
        -- local filename = vim.fn.expand "%:t"

        local compile_cmd = string.format("clear && g++ -o %s %s && ./%s", filename, file_path, filename)
        -- local compile_cmd = string.format("clear && make %s && ./%s", filename, filename)

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
    ["<C-n>"] = { "<nop>", "" },
  },
}

M.blankline = {
  plugin = true,

  n = {
    ["<leader>k"] = {
      function()
        local ok, start = require("indent_blankline.utils").get_current_context(
          vim.g.indent_blankline_context_patterns,
          vim.g.indent_blankline_use_treesitter_scope
        )

        if ok then
          vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
          vim.cmd [[normal! _]]
        end
      end,

      "Jump to current_context",
    },
  },
}

return M
