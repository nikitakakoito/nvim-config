return {
	"saghen/blink.cmp",
	version = "*",
	event = "InsertEnter",
	dependencies = {
		"L3MON4D3/LuaSnip", -- ← ДОБАВЬ ЭТО
	},

	opts = {
		keymap = require("config.keymaps.blink_keyTable"),

		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = "mono",
		},

		completion = {
			trigger = {
				show_on_insert_on_trigger_character = true,
			},

			list = {
				selection = {
					preselect = true,
					auto_insert = true,
				},
			},

			menu = {
				border = "rounded",
				draw = {
					treesitter = { "lsp" },
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					border = "rounded",
				},
			},

			ghost_text = {
				enabled = true,
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		-- Сниппеты встроенные
		snippets = {
			preset = "luasnip",
		},

		-- Красивые иконки для каждого типа
		signature = {
			enabled = true,
			window = {
				border = "rounded",
			},
		},
	},
}
