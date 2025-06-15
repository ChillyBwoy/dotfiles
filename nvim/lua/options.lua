-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Core
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- Editor --
-- Base
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Tabs
vim.opt.tabstop = 2 -- tab size
vim.opt.softtabstop = 2 -- tab size
vim.opt.shiftwidth = 2 -- tab size
vim.opt.expandtab = true -- tabs to spaces
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Whitespace
local whitespace = "·"
vim.opt.listchars:append({ -- show whitespace
  tab = "» ",
  multispace = whitespace,
  lead = whitespace,
  trail = whitespace,
  nbsp = whitespace,
})
vim.opt.list = true

-- UI
vim.opt.number = true -- shows line numbers;

-- Cursor
vim.opt.cursorline = true
