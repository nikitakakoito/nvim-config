return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			direction = "horizontal",
			float_opts = {
				border = "curved",
			},
		})
	end,
}
