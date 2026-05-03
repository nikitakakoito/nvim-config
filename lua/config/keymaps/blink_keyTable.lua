return {
	preset = "default",

	["<C-j>"] = { "select_next", "fallback" },
	["<C-k>"] = { "select_prev", "fallback" },
	["<CR>"] = { "accept", "fallback" },
	["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
	["<C-e>"] = { "hide" },
	["<C-b>"] = { "scroll_documentation_up", "fallback" },
	["<C-f>"] = { "scroll_documentation_down", "fallback" },
}
