vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Type definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Declaration" })

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
		max_width = 100,
		max_height = 25,
	})
end, { desc = "Hover" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set({ "n", "v" }, "<leader>ra", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>rd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>rf", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format file" })
