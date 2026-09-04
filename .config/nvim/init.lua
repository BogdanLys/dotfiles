-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

vim.g.vimtex_view_method = "zathura"
