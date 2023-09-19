local present, vimtex = pcall(require, "vimtex")

if not present then
  return
end

local options = {
  syntax = true,
  vimtex_view_method = 'zathura',
}
