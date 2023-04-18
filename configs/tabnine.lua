local present, tabnine = pcall(require, "tabnine")

if not present then
  return
end

local option = {
  disable_auto_comment = false,
  accept_keymap = "<c-m>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" },
}

tabnine.setup(option)
