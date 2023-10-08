local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
local g = vim.g

-- g.vimwiki = {{path: "/home/ceaser/.vmwiki/"}}
-- for numbers
opt.nu = true
opt.rnu = true
opt.wrap = false
opt.iskeyword:append("-", "_")
opt.isfname:append "@-@"

-- enable nvim-startup screen
-- opt.shortmess = "filnxtToOF"

-- to leave 5 lines while j,k movement
opt.scrolloff = 5
opt.colorcolumn = "80"

opt.hlsearch = false
opt.incsearch = true

-- opt.backup = false
-- opt.swapfile = false
-- opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- opt.undofile = true

-- vim.cmd "silent! command! PeekOpen lua require('peek').open()"
-- vim.cmd "silent! command! PeekClose lua require('peek').close()"

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- for custom snippets
g.luasnippets_path = { vim.fn.stdpath "config" .. "/lua/custom/snippets" }

-- FOR NEOVIDE(gui)
if vim.g.neovide then -- only run the following command if neovide exists
  -- opt.guifont = "Hack Regular:h11", "Iosevka:h11", "JetBrains Nerd Font:h11", "Monospace:h11"
  opt.guifont = "Hack Regular:h11"

  -- g.neovide_cursor_antialiasing = true

  -- g.neovide_cursor_animate_command_line = false

  g.neovide_transparency = 0.8
  g.neovide_padding_bottom = 0
  g.neovide_padding_top = 0
  g.neovide_padding_right = 0
  g.neovide_padding_left = 0

  g.neovide_confirm_quit = true

  g.neovide_fullscreen = false

  g.neovide_remember_window_size = true

  g.neovide_scale_factor = 0.8

  g.neovide_refresh_rate = 60

  -- g.neovide_cursor_animation_length = 0.1

  -- g.neovide_cursor_trail_size = 0.1

  -- g.neovide_cursor_vfx_opacity = 200.0

  g.neovide_cursor_vfx_mode = "torpedo"
end
