local M = {}

M.general = {
  n = {
    ["Q"] = { "<nop>", "worst place in the universe" },

    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>cx"] = { "<cmd>!chmod +x %<cr>", "make current bash file executable", opts = { silent = true } },

    --close buffer
    -- ["<leader>x"] = { ":bufdo close<cr>", "close buffer" },
    ["<C-u>"] = { "<C-u>zz", "move half page up" },
    ["<C-d>"] = { "<C-d>zz", "move half page down" },

    --split window
    ["<leader>sv"] = { "<C-w>v", "split vertically" },
  },
}

M.nvterm = {
  n = {

    -- compile and run cargo project
    ["<leader>cc"] = {
      --
      function()
        local cargo_compile = string.format "cargo run"

        require("nvterm.terminal").send(cargo_compile, "vertical")
      end,

      "use cargo to build and run a cargo project",
    },

    ["<leader>cl"] = {
      --
      function()
        local file_path = vim.fn.expand "%"
        local latex_run = string.format("pdflatex %s", file_path)

        require("nvterm.terminal").send(latex_run, "vertical")
      end,

      "use latex_run to build and display the generated pdf file",
    },

    -- run c code
    ["<leader>gc"] = {
      function()
        local file_path = vim.fn.expand "%"
        local filename = vim.fn.expand("%:t"):match "^([^.]+)" .. ".out"

        local compile_cmd = string.format("clear && g++ -o %s '%s' && ./%s", filename, file_path, filename)

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
