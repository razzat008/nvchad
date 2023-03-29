---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "gatekeeper",
	theme_toggle = { "gatekeeper", "gatekeeper" },
	transparency = false,

	hl_override = highlights.override,
	hl_add = highlights.add,

	--statusline
	statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
		separator_style = "block", -- round/default/block
	},

	nvdash = {
		load_on_startup = true,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
