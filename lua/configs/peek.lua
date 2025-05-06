local status, peek = pcall(require, "peek")
local map = vim.keymap.set

if not status then
  return
end

local options = {
  auto_load = true,
  filetype = { "markdown", "vimwiki" },
  syntax = true,
  throttle_time = "auto",
  close_on_bdelete = true,
  theme = "dark",
  app = { "chromium", "--new-window" },
  -- app = "webview",
}

peek.setup(options)

vim.api.nvim_create_user_command("PeekToggle", function()
  if not peek.is_open() and vim.bo[vim.api.nvim_get_current_buf()].filetype == "markdown" then
    -- vim.fn.system "i3-msg split horizontal"
    peek.open()
  elseif peek.is_open() then
    peek.close()
  end
end, {})

map("n", "<leader>mp", "<cmd>PeekToggle<CR>", { desc = "Toggle Peek.nvim [Markdown Preview]" })
