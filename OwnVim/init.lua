-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
require("config.run")
require("lspconfig").clangd.setup({})
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
require("mini.statusline").setup()
require("config.fehline")
