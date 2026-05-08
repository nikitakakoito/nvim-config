local M = {}

M.list = {
	lua = {
		parsers = { "lua", "luadoc" },
		lsp = "lua_ls",
		mason_formatter = "stylua",
		config = {
			settings = {
				Lua = {
					workspace = { checkThirdParty = false },
					codeLens = { enable = true },
					completion = { callSnippet = "Replace" },
					doc = { privateName = { "^_" } },
					hint = {
						enable = true,
						setType = false,
						paramType = true,
						paramName = "Disable",
						semicolon = "Disable",
						arrayIndex = "Disable",
					},
				},
			},
		},
	},

	vim = {
		parsers = { "vim", "vimdoc" },
	},

	go = {
		parsers = { "go", "gomod", "gosum", "gowork" },
		lsp = "gopls",
		config = {
			settings = {
				gopls = {
					semanticTokens = true,

					gofumpt = true,
					staticcheck = true,
					completeUnimported = true,
					deepCompletion = true,
					matcher = "fuzzy",

					analyses = {
						nilness = true,
						unusedwrite = true,
						useany = true,
						unusedparams = true,
						shadow = true,
						fillstruct = true,
						undeclaredname = true,
					},

					hints = {
						compositeLiteralTypes = true,
						assignVariableTypes = true,
						compositeLiteralFields = true,
						constantValues = true,
						functionTypeParameters = true,
						parameterNames = true,
						rangeVariableTypes = true,
					},
					codelenses = {
						generate = true,
						gc_details = true,
						test = true,
						tidy = true,
						upgrade_dependency = true,
						vendor = true,
					},
				},
			},
		},
	},

	bash = {
		parsers = { "bash" },
		lsp = "bashls",
		mason_formatter = "shfmt",
	},

	python = {
		parsers = { "python" },
		lsp = "pyright",
		mason_formatter = "black",
	},

	javascript = {
		parsers = { "javascript", "typescript", "tsx", "jsdoc" },
		lsp = "ts_ls",
		mason_formatter = "prettier",
	},

	json = {
		parsers = { "json" },
		lsp = "jsonls",
		mason_formatter = "prettier",
	},

	yaml = {
		parsers = { "yaml" },
		lsp = "yamlls",
		mason_formatter = "prettier",
	},

	markdown = {
		parsers = { "markdown", "markdown_inline" },
		mason_formatter = "prettier",
	},

	query = {
		parsers = { "query" },
	},

	rust = {
		parsers = { "rust" },
		lsp = "rust_analyzer",
		system_formatter = "rustfmt",
		config = {
			settings = {
				["rust-analyzer"] = {
					checkOnSave = { command = "clippy" },
				},
			},
		},
	},
}

local function unique(items)
	local seen = {}
	local result = {}
	for _, item in ipairs(items) do
		if item and not seen[item] then
			seen[item] = true
			table.insert(result, item)
		end
	end
	return result
end

function M.parsers()
	local result = {}
	for _, lang in pairs(M.list) do
		for _, parser in ipairs(lang.parsers or {}) do
			table.insert(result, parser)
		end
	end
	return unique(result)
end

function M.lsp_servers()
	local result = {}
	for _, lang in pairs(M.list) do
		if lang.lsp then
			table.insert(result, lang.lsp)
		end
	end
	return unique(result)
end

-- Mason formatters (managed by neovim/mason)
function M.mason_formatters()
	local result = {}
	for _, lang in pairs(M.list) do
		if lang.mason_formatter then
			table.insert(result, lang.mason_formatter)
		end
	end
	return unique(result)
end

-- System formatters (already installed on the system, not managed by mason)
function M.system_formatters()
	local result = {}
	for lang_name, lang in pairs(M.list) do
		if lang.system_formatter then
			result[lang_name] = { lang.system_formatter }
		end
	end
	return result
end

return M
