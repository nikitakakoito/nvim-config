return {
	"folke/snacks.nvim",
	priority = 1000, -- грузится одним из первых, потому что Snacks даёт базовые UI/QoL-модули
	lazy = false,

	opts = {
		-- Плавный скролл.
		scroll = {
			enabled = true,
		},

		-- Отображение отступов и анимированный scope.
		indent = {
			enabled = true,
			animate = {
				enabled = true,
			},
		},

		input = {
			enabled = true,
		},

		-- Уведомления в углу экрана.
		notifier = {
			enabled = true,
			timeout = 3000,
			style = "fancy",
		},

		-- Умный scope для работы с блоками кода.
		scope = {
			enabled = true,
		},

		-- Включаем Snacks Explorer.
		-- explorer = {
		-- 	enabled = true,
		-- 	replace_netrw = true,
		-- 	trash = true,
		-- },
		--
		-- Picker нужен для Projects, Explorer и других Snacks picker-источников.
		-- picker = {
		-- 	enabled = true,
		--
		-- 	sources = {
		-- 		explorer = {
		-- 			auto_close = true,
		-- 			hidden = true,
		--
		-- 			-- Не показывать файлы из .gitignore.
		-- 			-- ignored = false,
		--
		-- 			-- Когда открываешь explorer, он старается раскрыть/показать текущий файл.
		-- 			follow_file = true,
		--
		-- 			focus = "list",
		--
		-- 			layout = {
		-- 				preset = "sidebar",
		-- 				layout = {
		-- 					position = "left",
		-- 					width = 36,
		-- 				},
		-- 			},
		--
		-- 			win = {
		-- 				list = {
		-- 					keys = {
		-- 						["<Space>"] = "confirm",
		--
		-- 						-- Vim-style открыть/войти.
		-- 						["l"] = "confirm",
		--
		-- 						-- Vim-style закрыть директорию.
		-- 						["h"] = "explorer_close",
		--
		-- 						-- Показать/скрыть gitignored files.
		-- 						["I"] = "toggle_ignored",
		--
		-- 						-- Включить/выключить preview.
		-- 						["P"] = "toggle_preview",
		--
		-- 						["?"] = "toggle_help_input",
		-- 					},
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- },

		-- Встроенная интеграция Snacks с lazygit.
		lazygit = {
			enabled = true,
		},

		-- Подсветка слова под курсором и переходы по совпадениям.
		words = {
			enabled = true,
		},
		dashboard = { enabled = false },
		statuscolumn = { enabled = false },
		bigfile = { enabled = false },
	},
}
