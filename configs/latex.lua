local present, latex = pcall(require, "latex")

if not present then
  return
end

local options = {
  syntax = true,
}

latex.setup(options)
