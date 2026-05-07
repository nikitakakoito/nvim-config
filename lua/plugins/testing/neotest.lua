return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			adapters = {},
			status = { virtual_text = true },
			output = { open_on_run = false },
		},
		config = function(_, opts)
			require("neotest").setup(opts)
		end,
		keys = require("config.keymaps.neotest_keymap"),
	},
}
