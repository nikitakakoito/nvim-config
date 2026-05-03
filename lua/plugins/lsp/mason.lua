return {
	-- Установщик LSP серверов, форматтеров, линтеров
	{
		"mason-org/mason.nvim",
		build = ":MasonUpdate",
		opts = {
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},

	-- Мост между mason и lspconfig
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = function()
			local languages = require("config.languages")
			return {
				ensure_installed = languages.lsp_servers(),
				automatic_installation = true,
			}
		end,
	},

	-- Автоустановка форматтеров через mason
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = function()
			local languages = require("config.languages")
			return {
				ensure_installed = languages.mason_formatters(),
				auto_update = true,
				run_on_start = true,
			}
		end,
	},
}
