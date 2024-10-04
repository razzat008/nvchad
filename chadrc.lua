---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "doomchad",
  theme_toggle = { "doomchad", "doomchad" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  --statusline
  statusline = {
    theme = "minimal",         -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- round/default/block
  },

  cmp = {
    icons = false,
    style = "atom",
  },

  nvdash = {
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
    load_on_startup = true,
    header = {
      -- "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      -- "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      -- "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      -- "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      -- "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      -- "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      -- "                                                     ",
      "                                                                        ",
      "             ██████╗███████╗ █████╗ ███████╗███████╗██████╗             ",
      "            ██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗            ",
      "            ██║     █████╗  ███████║███████╗█████╗  ██████╔╝            ",
      "            ██║     ██╔══╝  ██╔══██║╚════██║██╔══╝  ██╔══██╗            ",
      "            ╚██████╗███████╗██║  ██║███████║███████╗██║  ██║            ",
      "             ╚═════╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝            ",
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
