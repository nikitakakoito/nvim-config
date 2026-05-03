return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local languages = require("config.languages")

		local formatters_by_ft = {}

		-- Mason formatters
		for lang_name, lang_data in pairs(languages.list) do
			if lang_data.mason_formatter then
				formatters_by_ft[lang_name] = { lang_data.mason_formatter }
			end
		end

		-- System formatters
		for lang_name, formatters in pairs(languages.system_formatters()) do
			formatters_by_ft[lang_name] = formatters
		end

		require("conform").setup({
			default_format_opts = {
				timeout_ms = 3000,
			},
			formatters_by_ft = formatters_by_ft,
			-- format_on_save используется ТОЛЬКО если есть форматтер
			format_on_save = function(bufnr)
				-- Проверяем есть ли форматтер для этого филтайпа
				local ft = vim.bo[bufnr].filetype
				if formatters_by_ft[ft] then
					return {
						timeout_ms = 3000,
						lsp_format = "never", -- форматтер уже есть
					}
				end
				return nil -- нет форматтера, не форматируем
			end,
		})
	end,
}
