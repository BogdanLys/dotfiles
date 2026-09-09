-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<Leader>R", function()
  vim.api.nvim_exec2("Lazy reload LuaSnip", {})
  require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
end, { desc = "Reload LuaSnip", silent = true })

-- set keybinds for both INSERT and VISUAL.
-- vim.api.nvim_set_keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
-- vim.api.nvim_set_keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})
-- vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {})
--  inoremap <c-u> <cmd>lua require("luasnip.extras.select_choice")()<cr>
vim.keymap.set({ "i", "s" }, "<C-n>", "<Plug>luasnip-next-choice", {})
vim.keymap.set({ "i", "s" }, "<C-p>", "<Plug>luasnip-prev-choice", {})
vim.keymap.set({ "i", "s" }, "<C-u>", "<cmd>lua require('luasnip.extras.select_choice')()<cr>", {})
