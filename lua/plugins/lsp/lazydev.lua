return {
	"folke/lazydev.nvim",
	ft = "lua",
	cmd = "LazyDev",
	opts = {
		library = {
			-- vim.uv — асинхронные операции
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			-- lazy.nvim API
			{ path = "lazy.nvim", words = { "LazyVim" } },
			-- snacks.nvim — чтобы Snacks. автодополнялся
			{ path = "snacks.nvim", words = { "Snacks" } },
		},
	},
}
