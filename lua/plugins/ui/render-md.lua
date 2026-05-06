return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"echasnovski/mini.icons",
	},

	opts = {
		enabled = true,

		render_modes = { "n", "c", "t" },

		heading = {
			enabled = true,
			sign = false,
			position = "overlay",
			icons = {
				"󰲡 ",
				"󰲣 ",
				"󰲥 ",
				"󰲧 ",
				"󰲩 ",
				"󰲫 ",
			},
			width = "full",
			left_margin = 0,
			left_pad = 0,
			right_pad = 1,
			min_width = 0,
			border = false,
		},

		code = {
			enabled = true,
			sign = false,
			style = "full",
			position = "left",
			language_pad = 1,
			left_pad = 1,
			right_pad = 1,
			min_width = 0,
			border = "thin",
		},

		dash = {
			enabled = true,
			icon = "─",
			width = "full",
		},

		bullet = {
			enabled = true,
			icons = { "●", "○", "◆", "◇" },
		},

		checkbox = {
			enabled = true,
		},

		quote = {
			enabled = true,
			icon = "▌",
		},

		callout = {
			note = {
				raw = "[!NOTE]",
				rendered = "󰋽 Note",
				highlight = "RenderMarkdownInfo",
			},
			tip = {
				raw = "[!TIP]",
				rendered = "󰌶 Tip",
				highlight = "RenderMarkdownSuccess",
			},
			important = {
				raw = "[!IMPORTANT]",
				rendered = "󰅾 Important",
				highlight = "RenderMarkdownHint",
			},
			warning = {
				raw = "[!WARNING]",
				rendered = "󰀪 Warning",
				highlight = "RenderMarkdownWarn",
			},
			caution = {
				raw = "[!CAUTION]",
				rendered = "󰳦 Caution",
				highlight = "RenderMarkdownError",
			},
		},

		link = {
			enabled = true,
			image = "󰥶 ",
			email = "󰀓 ",
			hyperlink = "󰌹 ",
			highlight = "RenderMarkdownLink",
		},

		pipe_table = {
			enabled = true,
			preset = "round",
		},
	},
}
