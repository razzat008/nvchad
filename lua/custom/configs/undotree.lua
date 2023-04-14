local keymap = vim.keymap.set

keymap("n","<leader>u",vim.cmd.UndotreeToggle)

local present,undotree = pcall(require,"undotree")

if not present then
  return
end
