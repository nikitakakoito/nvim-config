local luasnip = require("luasnip")

vim.keymap.set({ "i", "s" }, "<Tab>", function()
	if luasnip.expand_or_jumpable() then
		return "<Plug>luasnip-expand-or-jump"
	end

	return "<Tab>"
end, { expr = true, silent = true, desc = "Expand or jump snippet" })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
	if luasnip.jumpable(-1) then
		return "<Plug>luasnip-jump-prev"
	end

	return "<S-Tab>"
end, { expr = true, silent = true, desc = "Jump to previous snippet field" })
