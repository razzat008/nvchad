local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
local g = vim.g

-- for numbers
opt.relativenumber = true


-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
