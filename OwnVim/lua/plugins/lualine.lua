-- return {
--   {
--     "nvim-lualine/lualine.nvim",
--     enabled = true,
--     opts = {
--       theme = "eldritch",
--       options = {
--         component_separators = " ",
--         section_separators = { left = "", right = "" },
--       },
--     },
--   },
-- }
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      vim.o.statusline = " "
    else
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    vim.o.laststatus = vim.g.lualine_laststatus

    local opts = {
      options = {
        theme = "auto",
        globalstatus = vim.o.laststatus == 3,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {},
        lualine_y = {},
      },
      extensions = { "neo-tree", "lazy", "fzf" },
    }

    return opts
  end,
}
