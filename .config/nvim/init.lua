-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_quickfix_open_on_warning = 0
vim.g.vimtex_quickfix_ignore_filters = { "Underfull \\hbox", "Overfull \\hbox" }

require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "venv",
    },
  },
})
