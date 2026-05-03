return {
	"mcauley-penney/visual-whitespace.nvim",
	event = "VeryLazy",

	config = function()
		require("visual-whitespace").setup({
			chars = {
				tab = "» ",
				space = "·",
				nbsp = "␣",
			},
			fileformat_chars = {
				unix = "",
				mac = "←",
				dos = "",
			},
			-- показывать только в визуальном режиме
			show_in_visual = true,
			show_in_normal = false,
			show_in_insert = false,
		})
	end,
}
