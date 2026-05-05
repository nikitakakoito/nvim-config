return {
	"luukvbaal/statuscol.nvim",
	-- event = "BufReadPost",
	event = "VimEnter",
	config = function()
		local builtin = require("statuscol.builtin")
		require("statuscol").setup({
			ft_ignore = { "neo-tree", "alpha", "lazy", "mason", "toggleterm", "noice" },
			bt_ignore = { "nofile", "terminal" },
			relculright = true, -- выравнивать относительные номера вправо
			segments = {
				-- fold колонка
				{ text = { builtin.foldfunc }, click = "v:lua.ScFa" },
				-- знаки (gitsigns, diagnostics)
				{ text = { "%s" }, click = "v:lua.ScSa" },
				-- номера строк
				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
			},
		})
	end,
}
