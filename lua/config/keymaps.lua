vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")

-- =========================
-- AUTOLOAD EXTRA KEYMAP FILES
-- =========================

local function load_keymaps(dir)
	local scan = vim.loop.fs_scandir(dir)
	if not scan then
		return
	end
	while true do
		local name, type = vim.loop.fs_scandir_next(scan)
		if not name then
			break
		end
		if type == "file" and name:match("_keymap%.lua$") then
			local module = dir:gsub(vim.fn.stdpath("config") .. "/lua/", ""):gsub("%.lua$", ""):gsub("/", ".")
			require(module .. "." .. name:gsub("%.lua$", ""))
		end
	end
end

load_keymaps(vim.fn.stdpath("config") .. "/lua/config/keymaps")

vim.keymap.set({ "i", "n", "s" }, "<Esc>", function()
	vim.cmd("noh")
	return "<Esc>"
end, {
	expr = true,
	desc = "Escape and Clear hlsearch",
})
