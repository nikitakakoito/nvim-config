return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local fzf = require("fzf-lua")

		fzf.setup({
			"default",

			winopts = {
				height = 0.85,
				width = 0.85,
				row = 0.40,
				col = 0.50,
				border = "rounded",
				title = " Files ",
				title_pos = "center",
				title_flags = false,

				preview = {
					layout = "horizontal",
					ratio = 0.60,
					border = "rounded",
					title = true,
					title_pos = "center",
					winopts = {},
				},
			},

			previewers = {
				builtin = {
					title_fnamemodify = function()
						return "La preview de zalupa's"
					end,
				},
			},

			fzf_opts = {
				["--layout"] = "reverse",
				["--marker"] = "➤ ",
			},

			defaults = {
				prompt = "🫪 ",
				git_icons = true,
				file_icons = true,
				color_icons = true,
				formatter = "path.filename_first",
				cwd_header = false,
			},

			files = {
				cwd_prompt = false,
				fd_opts = [[--exclude node_modules --exclude .git --exclude dist --exclude build --exclude .cache]],
			},

			grep = {
				rg_opts = [[--glob "!node_modules" --glob "!.git" --glob "!dist" --glob "!build" --glob "!.cache" --column --line-number --no-heading --color=always]],
			},
		})
	end,
}
