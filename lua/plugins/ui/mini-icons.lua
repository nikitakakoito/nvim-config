return {
	"echasnovski/mini.icons",
	lazy = true,
	opts = {
		-- стиль иконок: "glyph" (nerd fonts), "ascii" (без шрифтов)
		style = "glyph",

		-- переопределить иконки для конкретных файлтайпов
		filetype = {
			go = { glyph = "󰟓", hl = "MiniIconsBlue" },
			lua = { glyph = "󰢱", hl = "MiniIconsAzure" },
			python = { glyph = "󰌠", hl = "MiniIconsYellow" },
			typescript = { glyph = "󰛦", hl = "MiniIconsBlue" },
			javascript = { glyph = "󰌞", hl = "MiniIconsYellow" },
			markdown = { glyph = "󰍔", hl = "MiniIconsGrey" },
		},
	},
	config = function(_, opts)
		require("mini.icons").setup(opts)
		-- говорим which-key использовать mini.icons
		require("mini.icons").mock_nvim_web_devicons()
	end,
}
