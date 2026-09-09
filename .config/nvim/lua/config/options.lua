-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.swapfile = false

vim.opt.virtualedit = "all"

vim.opt.spelllang = ""
-- vim.opt.spell = false

vim.g.vimtex_compiler_latexmk = {
  aux_dir = ".build",
}
