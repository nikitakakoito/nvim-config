return {
	"folke/tokyonight.nvim",
	priority = 1000,
	lazy = false,

	config = function()
		require("tokyonight").setup({
			style = "moon", -- storm, moon, night, day
			transparent = true,

			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		})

		vim.cmd.colorscheme("tokyonight")
	end,
}
