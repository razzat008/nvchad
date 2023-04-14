local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
local g = vim.g

-- for numbers
opt.relativenumber = true
opt.wrap = false
opt.iskeyword:append("-", "_")
opt.isfname:append "@-@"

-- to leave 5 lines while j,k movement
opt.scrolloff = 9

opt.hlsearch = false
opt.incsearch = true

-- opt.backup = false
-- opt.swapfile = false
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- opt.undofile = true

-- vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})

vim.cmd "silent! command! PeekOpen lua require('peek').open()"
vim.cmd "silent! command! PeekClose lua require('peek').close()"
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

g.luasnippets_path = { vim.fn.stdpath "config" .. "/lua/custom/snippets" }

-- FOR NEOVIDE
if vim.g.neovide then -- only run the following command if neovide exists
  opt.guifont = "Hack Regular:h11", "Iosevka:h11", "JetBrains Nerd Font:h11", "Monospace:h11"

  -- g.neovide_cursor_antialiasing = true

  -- g.neovide_cursor_animate_command_line = false

  -- g.neovide_transparency = 0.5

  g.neovide_confirm_quit = true

  g.neovide_fullscreen = false

  g.neovide_remember_window_size = true

  -- g.neovide_refresh_rate = 60

  -- g.neovide_cursor_animation_length = 0.1

  -- g.neovide_cursor_trail_size = 0.1

  -- g.neovide_cursor_vfx_opacity = 200.0

  g.neovide_cursor_vfx_mode = "torpedo"
end
