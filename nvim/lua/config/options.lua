-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.number = true
opt.relativenumber = false

opt.tabstop = 4
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.termguicolors = true
opt.scrolloff=25
opt.cursorline = true

opt.wildignorecase = true
opt.ignorecase = true
opt.smartcase = true
opt.wildignore = { "*.o", "*.a", "__pycache__" }
opt.clipboard = "unnamedplus"

--opt.mouse="a"
opt.mouse=""
--vim.api.CursorLine = true
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
