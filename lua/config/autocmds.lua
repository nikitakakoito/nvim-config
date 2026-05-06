-- cursorline only in active window
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
	callback = function()
		vim.opt_local.cursorline = true
	end,
})

vim.api.nvim_create_autocmd("WinLeave", {
	callback = function()
		vim.opt_local.cursorline = false
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "neo-tree", "lazy", "mason", "alpha", "dashboard" },
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
		vim.opt_local.foldcolumn = "0"
		vim.opt_local.statuscolumn = ""
	end,
})
