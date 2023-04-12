local mark = require ("harpoon.mark")
local ui = require ("harpoon.ui")
local keymap = vim.keymap.set

keymap("n", "<leader>a",mark.add_file)

keymap("n", "<C-e>",ui.toggle_quick_menu)

keymap("n", "<c-s>",function() ui.nav_file(1) end)
keymap("n", "<c-d>",function() ui.nav_file(2) end)
keymap("n", "<c-f>",function() ui.nav_file(3) end)
keymap("n", "<c-g>",function() ui.nav_file(4) end)
