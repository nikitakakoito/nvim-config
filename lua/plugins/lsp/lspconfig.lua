return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		local languages = require("config.languages")
		vim.lsp.config("*", {
			capabilities = require("blink.cmp").get_lsp_capabilities(),
		})

		-- Регистрируем каждый сервер с его конфигом из languages.lua
		for _, lang in pairs(languages.list) do
			if lang.lsp then
				local config = lang.config or {}
				vim.lsp.config(lang.lsp, config)
				vim.lsp.enable(lang.lsp)
			end
		end

		-- Настройка диагностик
		vim.diagnostic.config({
			severity_sort = true,
			underline = true,
			update_in_insert = false,
			virtual_text = {
				spacing = 4,
				source = "if_many",
				prefix = "●",
			},
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.HINT] = " ",
					[vim.diagnostic.severity.INFO] = " ",
				},
			},
		})
	end,
}
