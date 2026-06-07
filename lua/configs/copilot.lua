require("copilot").setup {
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_next = "<M-j>",
      jump_prev = "<M-k>",
      refresh = "gr",
      open = "<M-CR>",
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4,
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true, -- **This enables suggestions as you type**
    debounce = 75,
    keymap = {
      accept = "<M-Space>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = "node", -- Node.js path to use for copilot.
  server_opts_overrides = {},
}
