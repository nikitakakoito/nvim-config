-- Entry point of Neovim config
-- Loads core config and plugin manager (lazy.nvim)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
