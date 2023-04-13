---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gatekeeper",
  theme_toggle = { "gatekeeper", "falcon" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  --statusline
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    separator_style = "block", -- round/default/block
  },

  -- cmp = {
  --   icons = true,
  --   style = "atom",
  -- },

  nvdash = {
    load_on_startup = true,
    header = {
      -- --   "",
      -- "      ░░                         ░░      ",
      -- "      ████                     ████      ",
      -- "      ██▓▓██                 ██  ██      ",
      -- "      ██▓▓▓▓██             ██    ██      ",
      -- "  ██████▓▓▓▓▓▓█████████████      ██████  ",
      -- "  ██░░░░░░▓▓▓▓▓▓░░░░░░░░░      ░░░░░░██  ",
      -- "  ██▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒      ▒▒▒▒▒▒  ██  ",
      -- "  ██▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒      ░░▒▒▒▒    ██  ",
      -- "  ██░░▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒    ▒▒▒▒▒▒    ░░██  ",
      -- "  ██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒  ▒▒▒▒        ░░██  ",
      -- "  ██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒          ▒▒░██  ",
      -- "  ██░░▒▒▒▒▓▓▓▓▒▒▒▒▒▒ ▒▒▒▒      ▒▒▒▒░░██  ",
      -- "  ██░░▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒      ░░▒▒▒▒░░██  ",
      -- "  ██░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒ ▒▒    ▒▒▒▒▒▒▒▒░░██  ",
      -- "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒░░██  ",
      -- "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒░░██  ",
      -- "  ██░░░░▒▒▒▒▒▒▒▒▓▓▓▓▒    ▒▒▒▒▒▒▒▒░░░░██  ",
      -- "  ██████░░░░▒▒▒▒▒▒▓▓▒  ▒▒▒▒▒▒░░░░██████  ",
      -- "        ████░░░░▒▒▒▒▒▒▒▒▒░░░░████        ",
      -- "            ████░░░░▒░░░░████            ",
      -- "                ██  ▓▓▓██                ",
      -- "                   ████                  ",
      --   "                                                          ",
      --
      --
      --
      --
      -- ░░                                                  ░░      ",
      --   "      ████                                              ████      ",
      --   "      ██▓▓██                                          ██  ██      ",
      --   "      ██▓▓▓▓██                                      ██    ██      ",
      --   "  ██████▓▓▓▓▓▓██████████████████████████████████████      ██████  ",
      --   "  ██░░░░░░▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░      ░░░░░░██  ",
      --   "  ██▓▓▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒  ██  ",
      --   "  ██▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒      ░░▒▒▒▒    ██  ",
      --   "  ██░░▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒    ░░██  ",
      --   "  ██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒        ░░██  ",
      --   "  ██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒        ▒▒░░██  ",
      --   "  ██▒▒▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒░░▒▒▒▒▒▒    ▒▒▒▒        ▒▒▒▒  ██  ",
      --   "  ██▓▓▓▓▓▓▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓▒▒▒▒░░▒▒▒▒    ▒▒▒▒▒▒    ▒▒▒▒      ██  ",
      --   "  ██░░▓▓▓▓▒▒▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒░░▒▒    ░░▒▒  ▒▒  ░░▒▒      ░░██  ",
      --   "  ██▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒▓▓    ▒▒  ▒▒▒▒    ▒▒▒▒▒▒      ▒▒  ██  ",
      --   "  ██▓▓▓▓▒▒▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▒▒      ▒▒▒▒▒▒      ▒▒▒▒      ▒▒    ██  ",
      --   "  ██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▒▒▒▒▓▓        ▒▒▒▒    ▒▒▒▒  ▒▒  ▒▒▒▒    ░░██  ",
      --   "  ██░░▓▓▓▓▓▓▓▓▒▒▒▒▓▓▒▒▒▒      ░░░░▒▒▒▒  ░░▒▒    ▒▒▒▒        ░░██  ",
      --   "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓    ▒▒▒▒░░  ▒▒▒▒▒▒    ▒▒▒▒        ▒▒░░██  ",
      --   "  ██░░░░░░▓▓▓▓▓▓░░░░░░▓▓  ░░░░      ░░      ░░░░░░      ░░░░░░██  ",
      --   "  ██░░▒▒▒▒▒▒▓▓▓▓░░▒▒▒▒▒▒▒▒▒▒      ░░▒▒    ░░    ▒▒    ░░▒▒▒▒░░██  ",
      --   "  ██░░▓▓▓▓▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒    ▒▒░░  ▒▒▒▒▒▒      ▒▒  ▒▒▒▒    ░░██  ",
      --   "  ██░░▒▒▓▓▓▓▓▓▒▒▒▒▒▒▓▓▓▓    ▒▒      ▒▒▒▒      ▒▒▒▒▒▒      ▒▒░░██  ",
      --   "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▓▓▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒  ▒▒        ▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓▒▒▒▒    ▒▒░░  ▒▒    ▒▒    ▒▒    ▒▒▒▒▒▒░░██  ",
      --   "  ██░░▒▒▓▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒  ▒▒░░██  ",
      --   "  ██░░▒▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓  ▒▒      ▒▒▒▒      ▒▒▒▒▒▒        ▒▒░░██  ",
      --   "  ██░░▒▒▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒░░    ▒▒░░▒▒▒▒    ░░▒▒  ▒▒      ▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▒▒▓▓▒▒▓▓▓▓▓▓▒▒  ▒▒      ▒▒▒▒▒▒      ▒▒  ▒▒▒▒▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▓▓▓▓▒▒▒▒▒▒▓▓▓▓  ▒▒      ▒▒▒▒        ▒▒▒▒▒▒    ▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒░░  ▒▒▒▒░░▒▒▒▒    ░░▒▒▒▒      ░░▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▓▓▓▓  ▒▒▒▒      ▒▒▒▒▒▒    ▒▒    ▒▒▒▒▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒▒▒  ▒▒░░▒▒        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░██  ",
      --   "  ██░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒    ▒▒    ░░▒▒▒▒      ▒▒▒▒▒▒▒▒░░██  ",
      --   "  ██░░░░▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒      ░░▒▒▒▒      ▒▒    ▒▒▒▒▒▒▒▒░░░░██  ",
      --   "  ██████░░░░▒▒▒▒▒▒▓▓▒▒▒▒    ▒▒▒▒░░        ▒▒▒▒  ▒▒▒▒▒▒░░░░██████  ",
      --   "        ████░░░░▒▒▒▒▒▒    ░░          ▒▒░░▒▒▒▒▒▒▒▒░░░░████        ",
      --   "            ████░░░░▒▒      ▒▒    ▒▒▒▒▓▓▓▓▓▓▒▒░░░░████            ",
      --   "                ██      ▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▓▓▓▓▓▓██                ",
      --   "              ██    ████░░░░▒▒▒▒░░▒▒▒▒░░░░████▓▓▓▓██              ",
      --   "            ██    ██    ████░░░░░░░░░░████    ██▓▓▓▓██            ",
      --   "          ████████          ████░░████          ████████          ",
      --   "                                ██
      -- -- another header starts here
      -- -- "                                                     ",
      -- "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      -- "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      -- "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      -- "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      -- "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      -- "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      -- "                                                     ",
      --
      --

      -- " ██████╗ ██████╗ ███████╗███████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗",
      -- "██╔════╝ ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝",
      -- "██║  ███╗██████╔╝█████╗  █████╗     ██║   ██║██╔██╗ ██║██║  ███╗███████╗",
      -- "██║   ██║██╔══██╗██╔══╝  ██╔══╝     ██║   ██║██║╚██╗██║██║   ██║╚════██║",
      -- "╚██████╔╝██║  ██║███████╗███████╗   ██║   ██║██║ ╚████║╚██████╔╝███████║",
      -- " ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝",
      -- "                                                                        ",
      -- "                                                                        ",
      -- "             ██████╗███████╗ █████╗ ███████╗███████╗██████╗             ",
      -- "            ██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗            ",
      -- "            ██║     █████╗  ███████║███████╗█████╗  ██████╔╝            ",
      -- "            ██║     ██╔══╝  ██╔══██║╚════██║██╔══╝  ██╔══██╗            ",
      -- "            ╚██████╗███████╗██║  ██║███████║███████╗██║  ██║            ",
      -- "             ╚═════╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝            ",

      --      "___          ___          ___                                 ___     ",
      --     "/  /\        /  /\        /  /\        ___          ___       /  /\.   ",
      --    "/  /::|      /  /::\      /  /::\      /  /\        /__/\     /  /::|   ",
      --   "/  /:|:|     /  /:/\:\    /  /:/\:\    /  /:/        \__\:\   /  /:|:|   ",
      --  "/  /:/|:|__  /  /::\ \:\  /  /:/  \:\  /  /:/         /  /::\ /  /:/|:|__ ",
      -- "/__/:/ |:| /\/__/:/\:\ \:\/__/:/ \__\:\/__/:/  ___  __/  /:/\//__/:/_|::::\.",
      -- "\__\/  |:|/:/\  \:\ \:\_\/\  \:\ /  /:/|  |:| /  /\/__/\/:/~~ \__\/  /~~/:/",
      --     "|  |:/:/  \  \:\ \:\   \  \:\  /:/ |  |:|/  /:/\  \::/          /  /:/ ",
      --     "|__|::/    \  \:\_\/    \  \:\/:/  |__|:|__/:/  \  \:\         /  /:/  ",
      --     "/__/:/      \  \:\       \  \::/    \__\::::/    \__\/        /__/:/   ",
      --     "\__\/        \__\/        \__\/         ~~~~                  \__\/    ",
      --
      --
      --⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀
      -- "           ⢸⣍⡙⢿⣏⠉⠉⠉⠋⠉⠉⣩⣾⢋⣩⡇            ",
      -- "           ⢸⡈⢿⣦⡙⢳⣄⠀⠀⣠⡶⢋⣵⡿⢃⡇            ",
      -- "           ⢸⣙⠿⣮⢋⢷⡝⣣⠸⣫⡴⢛⣵⡾⢋⡇            ",
      -- "           ⢸⣝⢿⣮⣜⢷⢸⢋⡄⣫⡶⣃⣵⡾⣫⡇            ",
      -- "           ⢸⠙⢶⣭⢚⠷⢰⣯⢆⣩⡾⣃⣭⡶⠋⡇            ",
      -- "           ⢸⠀⠳⣾⣘⡃⠰⡣⢋⣵⠞⡃⣽⡶⠀⡇            ",
      -- "           ⢸⠀⠐⠾⡍⡃⡺⢞⣁⠶⣛⢭⡷⠂⠀⡇            ",
      -- "           ⠘⠤⣀⠙⠶⠆⣚⠽⢐⣫⠍⠶⠊⣀⠤⠃            ",
      -- "           ⠀⠀⠈⠙⢫⣬⣖⠃⠙⢊⣚⡋⠊⠁⠀⠀            ",
      -- "           ⠀⠀⠀⠀⠀⠀⠈⠙⠋⠁⠀⠀⠀⠀⠀⠀            ",
      --
      --
      --       "⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟨🟨🟨🟨🟨🟨⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬛🟫🟨🟨🟨⬛⬛⬛⬛🟨🟨⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥⬛⬛🟨🟫⬛⬛⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬛⬛🟫🟨🟨🟨🟨🟫🟫⬛⬛⬛⬛🟥🟥⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬛🟫🟫🟨⬜⬜⬜🟨🟨🟨🟨🟨🟫🟫⬛⬛🟥🟥⬛⬛⬛⬜⬜⬜⬜⬜⬜",
      -- "⬜⬛🟨🟨🟨🟫🟫🟫🟫🟫🟫🟫🟫🟫🟨🟨🟨🟫⬛⬛🟥⬛⬛⬛⬜⬜⬜⬜⬜",
      -- "⬛🟫🟨🟨🟫🟫🟫⬛⬛⬛⬛🟫🟫🟫🟫🟫🟫🟨🟨⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜",
      -- "⬛🟫🟨🟫⬛⬛⬛⬛⬛⬛🏻⬛⬛⬛🟫🟫🟫🟫🟫🟨🟨⬛⬛⬛⬜⬜⬜⬜⬜",
      -- "⬜⬛🟫⬛⬛⬛⬛🟧⬛🏻🏻⬛⬛⬛⬛⬛⬛🟫🟫🟫🟫🟨🟫⬛⬜⬜⬜⬜⬜",
      -- "⬜⬜⬛⬛⬛⬛🟧⬛⬛🏻🏻🟧⬛⬛🟧⬛⬛⬛⬛🟫🟫🟫🟨🟫⬛⬜⬜⬜⬜",
      -- "⬜⬛⬛🟧⬛⬛🟧⬛🟧🏻🏻🏻🏻⬛⬛🟧⬛⬛⬛⬛🟫🟫🟫🟨⬛⬜⬜⬜⬜",
      -- "⬜⬛⬜⬛⬛⬛⬛⬛🏻🏻🏻🏻🏻⬛⬛🟧⬛⬛⬛⬛⬛🟫🟫🟫🟫⬛⬜⬜⬜",
      -- "⬜⬜⬜⬛⬛🏻⬛⬜🟧🏻🏻🏻⬛🟧⬛⬛🟧⬛⬛⬛⬛🟫🟫🟫🟫⬛⬜⬜⬜",
      -- "⬜⬜⬜⬛⬛⬜🟧⬛🏻🏻🏻🏻⬜⬜🟧⬛🟧⬛⬛⬛⬛⬛🟫🟫🟫⬛⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛⬜⬛⬛🏻🏻🏻🏻🟧⬛⬜⬛🏻⬛⬛⬛⬛🟫⬛🟫🟫⬛⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🏻⬜⬜🏻🏻🏻🏻⬛⬛⬜🏻🏻⬛🟧⬛⬛🟫🟫🟫⬛⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🏻🏻🏻🏻🏻🏻🏻⬜⬜🏻🏻🏻⬛🏻🟧⬛🟫⬛⬛⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🟧🏻🏻🏻🏻🏻🏻🏻🟧🟧🟧🏻🏻🏻🟧⬛⬛⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬛🟧🏻🏻🏻🏻🏻🏻🏻🏻🏻🟧🏻🟧⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬛🟧🏻🏻🏻🏻🏻🏻🟧🟧⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬜⬛🟥⬜⬛🟥🟥⬛🟧⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬛🟥🟥🟧🟥🟥🟥⬛🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬛⬛🟥🟥⬛🟥🟥🟥⬛🏻🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬛⬛🟥🟥🟥🟥🟥🟥🟥🟥⬛🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🏻⬛🟥🟥🟥⬛🟥🟥🟥🟥⬛🏻⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🏻🏻⬛⬛🟥🟥🟥🟥🟥⬛🟧🏻🏻🟧⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬛⬛🟦🟦🟦⬛⬛⬛⬛⬛🏻⬜🏻🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬛⬜🟦🟦🟦🟦🟦🟦⬛🟧🏻🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬜⬜⬛🟫🟦⬛⬛🟦🟦🟦⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬜⬛⬛⬛🏻⬛⬜⬜⬛🟦⬜⬜⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛🏻🏻🏻🏻⬛⬜⬜⬜⬛🏻🟧⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬛🟫🟨🟨🏻🟫⬛⬜⬜⬛🟧🏻🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",
      -- "⬜⬜⬜⬜⬛⬛⬛⬛⬛⬜⬜⬜⬛🟧🏻🏻🏻⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜",

      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣻⡭⠭⠭⠭⠭⠭⢿⡯⠭⢭⣿⣿⣛⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⡽⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠷⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⢋⡼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⡟⣵⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⡝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⡟⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⣮⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⡟⣼⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣆⣶⣿⣿⣷⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⡿⣹⣿⣿⣷⣦⣼⣦⣆⣴⣾⠀⣠⣴⡞⠀⠀⠀⠀⠀⣄⠀⠀⢮⣦⣳⣴⣼⣮⣿⡿⢿⡿⣿⣷⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢇⡿⠏⡿⡿⢻⠿⡟⠻⠃⠁⠀⠁⠁⠀⠀⠀⠀⠀⠀⠘⠁⠀⠹⠙⠟⠛⠟⠛⢿⡏⠈⠃⠈⠉⢻⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢸⠇⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢫⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡇⠀⠀⠀⠀⢸⣿⣷⡀⢡⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣼⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡇⠀⠀⠀⠀⣸⣿⣿⣿⣄⠳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢻⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⠀⠀⠀⠀⣿⡿⠟⠩⠶⠧⡑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢸⠀⠀⠀⠀⠀⠀⠀⣬⢟⣛⣛⠛⠀⠀⠀⢨⣥⡚⣉⣀⢭⣁⢀⣴⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⢸⡀⠀⠀⠀⠀⠘⠀⣪⣭⡠⡤⢀⠀⢠⠀⣿⣿⣿⣿⣭⣤⣶⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⡼⡇⠀⠀⠀⠀⠀⠀⣿⣿⣷⣾⡇⢀⡟⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣇⣧⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⠃⣾⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⡾⡄⠀⠀⠀⠀⠀⠀⠙⣿⣿⣾⣿⣷⣍⣦⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⢸⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣟⣛⣩⣽⣿⣿⣿⡿⣫⣆⡷⠀⠀⠀⢀⠀⠀⢰⡇⢠⣿⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⡄⢆⠀⢄⠀⠀⠀⣀⣤⣬⡻⣿⣿⣯⣤⣾⣿⣿⢟⡵⣟⣯⣾⠇⠀⢀⣾⠀⣰⣿⢃⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣜⣦⡸⣿⣦⣸⣿⣝⣛⡛⠆⠙⠻⠿⢛⣋⣤⣷⣾⠟⣫⣶⣾⠓⠸⢿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣾⡟⣁⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⡿⣋⣵⣿⣿⠟⠁⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⣿⣷⣄⡀⠙⠿⠿⠿⠿⣛⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠄⠂⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣻⠸⣿⣿⣿⣿⣿⣶⣶⣤⣭⣭⣥⣤⣶⣶⡿⠃⠀⠀⠂⠀⣤⡹⣦⣖⠦⣉⡛⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⢿⢯⠾⡟⣣⣶⡄⠈⣙⡻⢿⣿⣿⣿⣿⣿⣿⣿⠿⠟⣋⣠⣴⣾⣷⣄⢀⣿⣷⡹⣿⣿⣻⠿⣷⢆⣊⠙⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⡟⡁⣿⣿⢟⣽⣿⣿⢇⣴⣮⣽⣷⠰⣬⣭⣭⣍⡁⠀⠀⣿⣿⣿⣿⣿⣿⣿⣮⡻⣿⣷⡹⣿⣿⣿⣷⣿⣮⣽⣂⠂⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣼⣧⢛⣵⣿⣿⣿⢫⣾⣿⣿⡿⠿⠼⠮⠻⣿⣿⣿⣷⣦⡈⠻⣿⣿⣿⣿⣿⣿⣷⣻⣿⣿⡽⣿⣿⣿⣿⣿⢳⣿⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⡏⢟⣵⣿⣿⣿⣿⠃⢋⣍⣽⢡⢯⣄⣲⣶⡙⠈⠻⣿⣿⣝⡿⣷⣤⣍⣻⣿⣿⣿⣿⣷⡻⣬⠾⣹⣿⣿⣿⢇⣿⣿⠀⠀⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⢫⣶⣿⣿⣿⣿⣿⣡⣬⣬⣬⣭⣘⢪⣭⡭⣑⣥⣽⣶⣮⡻⣿⣿⣿⣶⣮⣭⣭⣭⣉⣉⣉⣉⣀⡛⠿⠿⠿⠿⠼⣿⡟⣶⠉⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣾⣝⣛⡿⠿⠿⣵⣿⣿⣿⣿⣽⠫⣛⡿⠹⠿⠿⠿⣿⣿⣿⣾⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣿⣥⣤⣀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⡺⣫⣾⡿⣱⣿⣿⣿⣿⣿⣟⣾⣿⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⣝⣻⠿⣿⣿⡿⢿⣻",
      -- "⣿⡿⣫⣾⣿⣿⣳⣿⣿⣿⣿⣿⡿⣼⣿⢧⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢮⣟⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣟⣫⢿⢾⣭⢝⣾",
      -- "⡏⡞⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⡇⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣸⣿⣿⣾⣭⣛⡻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⡻⣝⢮⣟⣷⣫⣗⢮⡩⣵⣷⣿⣿",
      -- "⣧⣾⣿⣿⣿⣷⢘⡻⠿⠿⠶⠦⢀⣛⣛⣘⣛⣛⣛⣛⣿⠿⠿⠿⣿⣿⣿⣿⣇⣿⣿⣿⣿⣿⣿⣿⡝⣶⣭⢿⣿⣿⣷⢿⣭⣳⢕⢌⡳⢷⠀⠙⠚⣯⣷⣿⣿⣿⣿⣿",
      -- "⣿⡼⣿⣿⣿⣿⠀⢻⣿⣿⣿⣿⣿⣟⣿⣧⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⡖⣼⣿⣿⣿⣿⣿⣿⣯⣪⡜⣿⡇⠉⠋⣽⣭⣮⣿⣵⣶⣿⣿⠧⣀⣤⣾⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣮⣭⣛⠻⠀⢢⢻⣿⣿⣿⣿⣿⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢳⣿⣿⣿⣿⣿⣿⣿⡿⣫⣾⣿⠃⠀⠀⠙⣿⣿⠿⢟⣫⣭⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣷⣶⣦⣭⣛⣛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿⣿⣿⡿⣫⣾⣿⣿⠏⠀⣀⣀⣨⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣭⣭⣭⣽⣛⣛⣛⣛⣛⣃⣛⣛⣛⣛⣻⣭⣭⣭⣤⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡿⢿⡿⢿⣿⠟⢻⣿⣿⡿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠋⢸⠋⢸⠋⠐⠋⠀⠈⠀⠈⠁⠀⠈⠘⠉⠀⠊⠀⠎⠁⠟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠃⠀⢀⠀⠀⢀⠀⠀⠀⠀⠠⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠸⠟⢛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠃⠀⡀⡄⠆⠀⣠⠃⠀⢀⠀⢀⢣⡾⠀⡤⠂⣰⠀⠀⠐⢀⠤⢂⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⢀⡄⠀⠀⡀⢰⡟⠀⣠⠆⠀⣾⠎⠀⠈⠀⠜⠁⠀⠀⠀⠒⠚⠁⣰⠔⠀⠀⠀⠀⠀⠀⠈⠀⠾⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠺⢷⠀⠀⣧⠀⢿⠀⠏⠀⠀⠁⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠒⠚⢋⣁⣀⡀⠀⠀⠀⠀⠀⠰⠟⢋⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠁⠀⠘⠀⠀⠀⠀⠀⣄⢀⢠⣿⡀⠹⣿⣿⡄⠈⣷⣆⠀⠀⠀⠀⠀⠐⠶⠖⠒⠀⠀⠀⠁⠀⠀⠐⠛⣿⣿⣿⣿⣿⣿⣿",
"⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⡀⠀⠀⠀⠀⡠⠀⠀⠀⢀⣾⠐⢸⣿⡀⠈⣿⣷⣄⠹⣿⣷⡀⢿⣿⣀⠀⠀⠀⣈⣁⣀⡀⠀⠀⠀⠀⢀⠀⠀⠀⠘⢉⣿⣿⣿⣿⣿⣿",
"⠴⠂⢰⡄⣬⣙⡻⢿⣿⣿⣿⣿⣿⣿⠁⡾⠀⠀⢀⠀⢰⡇⠀⣿⠀⣾⣿⣧⠈⣿⣿⣦⠙⠛⠛⠛⠊⠛⠃⠺⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠐⠛⣿⣿⣿⣿⣿⣿",
"⣰⠆⠀⢷⢸⣿⣷⡘⣿⣿⣿⣿⣿⣿⣾⡇⢀⡄⢸⠀⣿⣇⠀⣿⣧⡘⣿⣿⠷⠈⠉⢀⣠⣴⣶⣶⣶⣤⠀⣠⣾⣿⣿⣷⡄⠀⠀⠀⠉⣤⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢻⣿⣿⣿⣿",
"⢐⠂⢰⠘⡆⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣧⠸⢡⣿⣦⡙⠿⣦⡘⠉⠁⠈⢀⣠⡶⠿⠿⢛⡛⠛⠿⠛⠁⣴⣿⣿⣿⣿⣿⡇⠀⠀⠠⠤⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⣰⢿⣿⣿⣿⣿",
"⠛⢷⡦⠁⠐⣈⠛⠳⢸⣿⣿⣿⣿⣿⣿⣿⡄⠀⣀⣀⣀⡀⢿⣿⣷⣦⣀⠀⡁⠠⠤⠀⠄⠲⠌⠟⣃⣴⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⢂⡀⠤⡈⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿",
"⢻⡟⢃⠴⢋⡩⠤⠤⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⡉⠛⠋⢁⣜⡛⢿⣿⣿⣿⣶⣤⣤⣥⣽⣿⣿⠟⠛⠿⠿⢿⣿⣿⣿⣿⡏⠀⠀⠀⡰⠟⠀⠀⢁⠀⠀⠂⠀⠀⠀⣼⣿⣿⣿⣿⣿",
"⣄⠀⠱⠁⣠⣶⣶⣶⡄⢹⣿⣿⣿⣿⣿⣿⣿⢠⣤⠆⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⠀⠀⠀⢠⣤⣠⣬⣽⣿⣿⡏⠀⠀⡜⠁⠠⢀⢃⠀⠀⠈⠀⠀⠀⣈⣿⣿⣿⣿⣿⣿",
"⣿⣷⠀⢰⡿⢛⣩⣥⣦⡀⢿⣿⣿⣿⣿⣿⣿⢸⣧⠀⠀⠉⠙⠿⡟⣿⣿⣿⣿⣿⣿⣿⣿⠠⠀⠀⠀⠀⠠⣤⣭⣿⣿⣿⣿⣦⣼⡧⢀⣶⡄⠙⠇⡄⠀⠀⠀⠀⣹⣿⣿⣿⣿⣿⣿",
"⣿⡟⢸⠀⢰⣿⡿⠿⠟⣛⠘⣿⣿⣿⣿⣿⣿⢸⣿⣆⠀⠀⠀⣀⣱⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⢦⣤⣬⣽⣿⣿⣿⣿⣿⡄⠀⣥⣤⣶⡾⠁⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿",
"⣿⡇⣼⡀⡈⠋⣴⠛⣛⣤⣤⠸⣿⣿⣿⣿⣿⠸⣿⣿⠿⠤⠟⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠘⢸⣿⣿⣿⣿⣿⣿⣿⣿⠯⣤⣴⣿⡿⠋⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⢣⡿⢁⡇⡘⣡⣾⡿⢟⣛⣥⠙⣿⣿⣿⣿⡇⣿⡇⢠⠶⠶⠶⣦⣬⡛⠿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠉⠿⣿⣿⣿⣿⣿⣿⣿⠀⠹⠿⢋⡀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣽⠌⣱⣿⠃⣷⠸⢏⣴⣿⠿⠿⠷⠘⣿⣿⣿⡇⢸⣧⣠⣤⣤⣤⣈⢙⣿⣷⣬⣿⣿⣿⣿⣿⣿⣿⣇⣀⣴⣿⣿⣿⣿⣿⣿⠃⣴⡖⠀⣾⣿⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⡈⣰⣿⠏⢸⣿⣇⠉⣴⠖⣡⣶⣿⣧⠹⣿⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⣰⣿⣏⠀⣿⣿⡆⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⠄⢻⣿⠀⢸⣿⣿⣆⢁⡜⣿⣿⣿⠿⠧⠘⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⣸⣿⣿⣷⠀⣿⣿⣇⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣜⢸⣿⡀⢼⣿⣿⣿⡄⢃⠈⢡⣴⣾⣿⣧⠘⣧⠸⣿⣿⣿⡿⠿⣿⣿⡿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠛⠋⠀⠀⢀⣤⣼⠀⣿⣿⣿⡇⠀⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⢸⣿⠁⢸⣿⣿⣿⣿⡌⡀⠸⣿⣿⣿⣿⣷⡘⡆⠉⠉⠁⠀⠀⠀⠀⠀⠐⠈⠉⠉⠁⠁⢀⡀⠄⠐⠀⣠⣴⣿⣿⢣⢾⣿⣿⣿⡄⠀⣿⣿⣿⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⡌⣿⢀⢸⣿⣿⣿⣿⣷⠐⡄⠈⠉⣩⣥⣶⣤⡈⢶⣶⣤⣄⡂⠀⠀⠀⠀⠠⡀⠀⢀⢀⠀⠁⢀⣴⣾⣿⣿⣿⠇⢃⣿⣿⣿⣿⣯⠄⣿⣿⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣧⠸⠸⢸⣿⣿⣿⣿⣿⣧⡈⠀⠸⣿⠿⣋⣉⣁⡈⢻⣿⣿⣿⣆⠀⡀⢢⣀⡔⠀⠀⠁⣠⣾⣿⣿⣿⣿⣿⡗⠀⢰⣿⣿⣿⣿⣿⡀⢻⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣧⠀⣿⣿⣿⣿⣿⣿⣿⣷⠐⠀⠰⣾⣿⣿⣿⣿⣆⠻⣿⣿⣿⠀⠀⠸⠏⠀⣡⣴⣿⣿⣿⣿⣿⣿⣿⡯⠈⠔⢺⣿⣿⣿⣿⣿⡇⢹⣿⣿⣿⡆⢿⣿⣿⡿⠿⠿⠿⠿⠿⣿⣿",
"⣿⣿⣿⣧⣸⣿⣿⣿⣿⣿⣿⣿⣧⠸⣀⠈⠿⠟⣛⣡⣬⣤⠹⣿⣿⡇⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⣿⣿⣿⣿⣿⣿⣧⠘⣿⣿⡿⠇⢘⣫⣤⣶⣿⣿⣿⣿⣷⣦⣌",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⢳⠀⣴⣾⣿⣿⣿⡿⠧⠘⣿⣷⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡃⠀⢰⣿⣿⣿⣿⣿⡿⠿⠀⢋⣭⣴⣶⣿⣿⠟⠟⠛⢻⣿⣿⣿⠿⢻",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⣤⡌⠛⠛⣩⣥⣶⣶⡶⠌⠻⠇⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣠⣼⣿⣿⠟⢋⣩⣴⣾⣿⣿⡿⠻⠋⠉⠀⠀⠀⠀⠉⡝⠛⠀⠀⠁",
-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡘⠇⠄⠿⢋⣁⠴⠶⠶⠞⠛⠀⠀⡀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣥⠁⠺⠟⣉⣴⣾⡿⠿⠋⠝⠡⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣴",
-- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⣛⣛⠃⠀⣠⣾⣿⣿⣿⣷⣤⡀⠀⠀⠀⢸⡌⣿⣿⣿⣿⣿⣿⣿⠿⢋⣠⣶⣿⠟⠛⠋⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣾⣿⣿⡿",
-- "⣿⣿⣿⣿⣿⣿⣿⣿⠟⢋⡥⠊⠀⠀⠀⠔⠛⠉⠀⠈⠉⠙⠻⠿⠿⠓⠀⠀⠈⡛⣙⣛⣛⡛⠋⣉⣤⡶⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠿⠛⠛⠁⠈",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
