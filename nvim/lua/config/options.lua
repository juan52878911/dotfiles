-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.clipboard = "unnamedplus"

-- folding options with treesitter
opt.foldenable = true
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- colorscheme
opt.termguicolors = true
opt.background = "dark"
opt.guifont = "JetBrainsMono Nerd Font:h10"
