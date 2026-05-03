return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local fzf = require("fzf-lua")

		-- убираем ansi escape коды из onefetch вывода
		local function strip_ansi(str)
			str = str:gsub("\27%[[0-9;]*[mK]", "")
			str = str:gsub("\27%[[%?0-9;]*[a-zA-Z]", "")
			return str
		end

		-- пробуем получить красивый заголовок из onefetch
		local function get_onefetch_header()
			if vim.fn.executable("onefetch") ~= 1 then
				return nil
			end

			local output =
				vim.fn.system("onefetch --no-art --disabled-fields url churn --true-color never --no-bold 2>/dev/null")

			if vim.v.shell_error ~= 0 or output == "" then
				return nil
			end

			local cleaned = {}
			for _, line in ipairs(vim.split(output, "\n")) do
				local clean = strip_ansi(line)
				if clean ~= "" then
					table.insert(cleaned, clean)
				end
			end

			return cleaned
		end

		-- фолбек хедер из файла
		local header_file = vim.fs.normalize("~/.config/nvim/lua/someFiles/dashboard_custom_header.txt")
		local default_header = vim.fn.filereadable(header_file) == 1 and vim.fn.readfile(header_file) or {}

		dashboard.section.header.val = default_header
		dashboard.section.header.opts.hl = "Question"
		dashboard.section.footer.val = "Total plugins: " .. require("lazy").stats().count

		dashboard.section.buttons.val = {
			dashboard.button("s", "  Restore Session", function()
				local ok, persistence = pcall(require, "persistence")

				if not ok then
					vim.notify("persistence.nvim is not loaded", vim.log.levels.ERROR)
					return
				end

				local session_dir = vim.fn.stdpath("state") .. "/sessions"
				local sessions = vim.fn.glob(session_dir .. "/*", false, true)

				if #sessions == 0 then
					vim.notify("No sessions found", vim.log.levels.WARN)
					return
				end

				persistence.load()
			end),
			dashboard.button("p", "  Projects", function()
				Snacks.picker.projects()
			end),
			dashboard.button("f", " Find file", function()
				fzf.files()
			end),
			dashboard.button("q", " Exit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.config)

		-- если в git репо — показываем onefetch вместо дефолтного хедера
		vim.api.nvim_create_autocmd("User", {
			group = vim.api.nvim_create_augroup("vimrc_alpha", { clear = true }),
			pattern = "AlphaReady",
			once = true,
			callback = function()
				local onefetch_header = get_onefetch_header()
				if onefetch_header and #onefetch_header > 0 then
					dashboard.section.header.val = onefetch_header
					alpha.redraw()
				end
			end,
		})
	end,
}
