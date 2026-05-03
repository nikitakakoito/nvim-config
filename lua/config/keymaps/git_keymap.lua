-- Git
local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>gf", fzf.git_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>gc", fzf.git_commits, { desc = "Commits" })
vim.keymap.set("n", "<leader>gb", fzf.git_branches, { desc = "Branches" })
vim.keymap.set("n", "<leader>gs", fzf.git_status, { desc = "Status" })
vim.keymap.set("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "LazyGit" })
