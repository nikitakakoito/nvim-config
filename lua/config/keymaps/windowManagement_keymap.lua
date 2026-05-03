-- =========================
-- SPLITS / WINDOW MANAGEMENT
-- =========================

vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Equalize windows" })

vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Go down window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Go up window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go right window" })

vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close window" })
vim.keymap.set("n", "<leader>wo", "<cmd>only<CR>", { desc = "Close other windows" })
