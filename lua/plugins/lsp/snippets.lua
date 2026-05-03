return {
	{
		"L3MON4D3/LuaSnip",
		version = "*",
		build = "make install_jsregexp",

		dependencies = {
			"rafamadriz/friendly-snippets",
		},

		config = function()
			local luasnip = require("luasnip")

			require("luasnip.loaders.from_vscode").lazy_load()

			luasnip.config.set_config({
				history = true,
				updateevents = "TextChanged,TextChangedI",
				enable_autosnippets = true,
			})
		end,
	},
}
