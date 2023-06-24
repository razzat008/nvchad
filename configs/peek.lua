local present, mpreview = pcall(require, "peek")

if not present then
  return
end

local options = {
  syntax = true,
  throttle_time = "auto",
  close_on_bdelete = true,
  theme = "dark",
  auto_load = true,
  -- app = { "firefox", "--new-window" },
  app = "webview",
}

mpreview.setup(options)
