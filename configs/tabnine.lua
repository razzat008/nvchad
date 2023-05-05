local present, tabnine = pcall(require, "tabnine")

if not present then
  return
end

local option = {
  disable_auto_comment = true,
  accept_keymap = "<C-m>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "green", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
}

tabnine.setup(option)
