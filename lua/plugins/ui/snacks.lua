return {
	"folke/snacks.nvim",
	priority = 1000, -- грузится первым
	lazy = false,
	opts = {
		-- Плавный скролл (замена neoscroll)
		scroll = {
			enabled = true,
		},

		-- Отступы с анимацией scope (замена indent-blankline)
		indent = {
			enabled = true,
			animate = {
				enabled = true,
			},
		},

		-- Красивый vim.ui.input (например для LSP rename)
		input = {
			enabled = true,
		},

		-- Уведомления в углу экрана
		notifier = {
			enabled = true,
			timeout = 3000,
			style = "fancy",
		},

		-- Умный scope — прыжки по блокам кода
		scope = {
			enabled = true,
		},
		-- Picker нужен для Projects

		picker = {
			enabled = true,
			sources = {
				explorer = {
					auto_close = true,
					win = {
						list = {
							keys = {
								["<Space>"] = "confirm",
							},
						},
					},
				},
			},
		},

		explorer = {
			enabled = true,
		},

		lazygit = {
			enabled = true,
		},
		words = {
			enabled = true,
		},

		-- Выключаем то что нам не нужно
		dashboard = { enabled = false }, -- у тебя alpha
		statuscolumn = { enabled = false }, -- у тебя своя настройка
		bigfile = { enabled = false },
	},
}
