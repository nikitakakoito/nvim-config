return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		local treesitter = require("nvim-treesitter")
		local languages = require("config.languages")

		treesitter.setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		treesitter.install(languages.parsers())
	end,
}
