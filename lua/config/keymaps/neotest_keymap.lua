local go = require("plugins.utils.go")
return {
	{
		"<leader>Tt",
		function()
			require("neotest").run.run()
		end,
		desc = "Test nearest",
	},
	{
		"<leader>Tf",
		function()
			require("neotest").run.run(vim.fn.expand("%"))
		end,
		desc = "Test file",
	},

	{
		"<leader>Ta",
		function()
			local root = require("plugins.utils.go").module_root()
			require("neotest").run.run(root)
		end,
		desc = "Test all in module",
		ft = "go",
	},
	{
		"<leader>Tl",
		function()
			require("neotest").run.run_last()
		end,
		desc = "Test last",
	},
	{
		"<leader>Ts",
		function()
			require("neotest").summary.toggle()
		end,
		desc = "Test summary",
	},
	{
		"<leader>To",
		function()
			require("neotest").output.open({ enter = true, auto_close = true })
		end,
		desc = "Test output",
	},
	{
		"<leader>TO",
		function()
			require("neotest").output_panel.toggle()
		end,
		desc = "Test output panel",
	},
	{

		"<leader>Tcf",
		function()
			go.run_in_module("go test -count=1 -coverprofile=cover.out ./... && go tool cover -func=cover.out")
		end,
		desc = "Go coverage funcs",
		ft = "go",
	},
	{

		"<leader>Tch",
		function()
			go.run_in_module("go test -count=1 -coverprofile=cover.out ./... && go tool cover -html=cover.out")
		end,
		desc = "Go coverage html",
		ft = "go",
	},
}
