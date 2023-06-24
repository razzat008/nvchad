local present, vimwiki = pcall(require,"vimwiki")
if not present then
  return
end

local options = {
}

vimwiki.setup(options)
