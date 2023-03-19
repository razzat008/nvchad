local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"bash",
		"lua",
		"html",
		"css",
		"javascript",
		"c",
		"markdown",
		"markdown_inline",
	},
	indent = {
		enable = true,
		disable = {
			"python",
		},
	},
}

M.mason = {
	ensure_installed = {
		"lua-language-server",
		"html-lsp",
		"css-lsp",
		"clangd",
		"cpplint",
		"python-lsp-server",
		"rust-analyzer",
		"alex",
		"deno",
		"stylua",
		"usort",
		"prettierd",
		"cssmodules-language-server",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = false,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
