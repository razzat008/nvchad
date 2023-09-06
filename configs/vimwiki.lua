local present, vimwiki = pcall(require, "vimwiki")

if not present then
  return
end

local options = {
  vimwiki_hl_cb_checked = 2,
  vimwiki_filetypes = {"wiki"},
  vimwiki_global_ext = 0,
}

vimwiki.setup(options)
