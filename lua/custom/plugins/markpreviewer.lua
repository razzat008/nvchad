local present, mpreview = pcall(require, "peek")

if not present then
  return
end

local options = {
  syntax = true,
  filetype = { "markdown" },
  throttle_time = "auto",
  close_on_bdelete = true,
  theme = "dark",
  auto_load = true,
  app = "chromium",
}

mpreview.setup(options)
