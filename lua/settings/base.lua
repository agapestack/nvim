-- lua/settings/base.lua
--
local set = vim.opt

-- Use spaces instead of tabs
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2

-- Enable auto-indentation
set.smartindent = true
set.autoindent = true

-- Line numbers
set.number = true
set.relativenumber = true

-- Enable mouse support
set.mouse = 'a'

-- Use system clipboard
set.clipboard = 'unnamedplus'

-- Search settings
set.ignorecase = true
set.smartcase = true

-- Enable true color support
set.termguicolors = true

-- Better completion experience
set.completeopt = { 'menuone', 'noselect' }
