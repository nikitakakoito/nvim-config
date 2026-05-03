return {
	"ray-x/go.nvim",
	dependencies = {
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "go", "gomod", "gowork", "gotmpl" },
	build = ':lua require("go.install").update_all_sync()',

	opts = {
		-- отключаем всё что пересекается с нашим конфигом
		lsp_cfg = false,
		lsp_gofumpt = false,
		lsp_on_attach = false,
		lsp_codelens = false,
		lsp_inlay_hints = { enable = false },
		diagnostic = false,
		luasnip = false,
		gopls_cmd = nil,
		completion = false,
		textobjects = false,

		-- отключаем весь визуал
		icons = false,
		sign_covered_by_tests = false,
		sign_priority = false,
		dap_debug = false,
		dap_debug_keymap = false,
		dap_debug_gui = false,
		dap_debug_vt = false,
		run_in_floaterm = false,
		floaterm = "always",
		trouble = false,
		test_open_cmd = "edit",
	},

	keys = require("config.keymaps.go_keyTable"),
}
