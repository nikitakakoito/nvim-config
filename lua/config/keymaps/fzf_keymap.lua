local fzf = require("fzf-lua")

-- SEARCH (core navigation)
vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })

-- LSP navigation
vim.keymap.set("n", "<leader>fr", fzf.lsp_references, { desc = "LSP references" })
vim.keymap.set("n", "<leader>fs", fzf.lsp_document_symbols, { desc = "LSP symbols" })
