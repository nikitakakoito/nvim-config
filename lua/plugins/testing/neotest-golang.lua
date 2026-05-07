return {
	{
		"fredrikaverpil/neotest-golang",
		version = "*",
		build = function()
			vim.system({ "go", "install", "gotest.tools/gotestsum@latest" }):wait()
		end,
		dependencies = { "nvim-neotest/neotest" },
		config = function()
			local go = require("plugins.utils.go")
			require("neotest").setup({
				adapters = {
					require("neotest-golang")({
						runner = "gotestsum",
						go_test_args = { "-v", "-count=1", "-timeout=60s" },
						project_root = go.module_root,
					}),
				},
			})
		end,
	},
}
