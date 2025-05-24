require "nvchad.mappings"

-- add yours here

map = vim.keymap.set
local nomap = vim.keymap.del

-- ❌ Disable bad defaults
map("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- 📑 General normal mode mappings
map("n", "<Tab>", "<cmd>:bn<cr>", { desc = "Goto next buffer" })
map("n", "<S-Tab>", "<cmd>:bp<cr>", { desc = "Goto previous buffer" })

map("n", "n", "nzzzv", { desc = "Next search result centered" })
map("n", "N", "Nzzzv", { desc = "Previous search result centered" })

map("n", "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
map("n", "<leader>d", [["_d]], { desc = "Delete without yanking" })

map("v", "<leader>y", [["+y]], { desc = "Yank to system clipboard (visual)" })
map("v", "<leader>d", [["_d]], { desc = "Delete without yanking (visual)" })

map("x", "<leader>p", [["_dP]], { desc = "Paste over without losing clipboard" })

map("n", ";", ":", { desc = "Enter command mode", nowait = true })

map("n", "<leader>cx", "<cmd>!chmod +x %<cr>", { desc = "Make current file executable", silent = true })

map("n", "<C-u>", "<C-u>zz", { desc = "Move half page up and center" })
map("n", "<C-d>", "<C-d>zz", { desc = "Move half page down and center" })

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file explorer" })
nomap("n", "<C-n>")

map("n", "<leader><space>", "<cmd>Telescope buffers<CR>", { desc = "View buffers" })
map(
  "n",
  "<leader>fd",
  "<cmd>lua require('telescope.builtin').live_grep{ search_dirs={'%:p'} }<CR>",
  { desc = "Grep in current buffer" }
)

-- map("n", "<leader>k", function()
--   local ok, start = require("indent_blankline.utils").get_current_context(
--     vim.g.indent_blankline_context_patterns,
--     vim.g.indent_blankline_use_treesitter_scope
--   )
--   if ok then
--     vim.api.nvim_win_set_cursor(0, { start, 0 })
--     vim.cmd.normal { "_", bang = true }
--   end
-- end, { desc = "Jump to current indent context" })

-- 🚀 Cargo run project
map("n", "<leader>cc", function()
  require("nvterm.terminal").send("cargo run", "vertical")
end, { desc = "Cargo run in vertical terminal" })

-- 🦀 Rustc compile + run
map("n", "<leader>cr", function()
  local file_path = vim.fn.expand "%"
  local filename = vim.fn.expand("%:t"):match "^([^.]+)"
  require("nvterm.terminal").send("clear && rustc " .. file_path .. " && ./" .. filename, "vertical")
end, { desc = "Rustc compile and run" })


-- use latexmkd to compile latex document to pdf
map("n","<leader>lx","<cmd>!latexmk -pdf " .. vim.fn.expand "%".. "2>&1 > /dev/null" .. "<CR>",
  {desc = "Compile latex document into pdf"}
)

-- 🐍 Python run
map("n", "<leader>bl", function()
  local file_path = vim.fn.expand "%"
  require("nvterm.terminal").send("python3 " .. file_path, "horizontal")
end, { desc = "Run python file in terminal" })

-- 🛠 C++ compile + run
map("n", "<leader>gc", function()
  local file_path = vim.fn.expand "%"
  local filename = vim.fn.expand("%:t"):match "^([^.]+)" .. ".out"
  require("nvterm.terminal").send(
    "clear && g++ -o " .. filename .. " '" .. file_path .. "' && ./" .. filename,
    "vertical"
  )
end, { desc = "G++ compile and run" })
