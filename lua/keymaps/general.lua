local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "

-- Navigate between windows using Ctrl + h/j/k/l
map("n", "<C-h>", "<C-w>h", opts) -- Move to the left window
map("n", "<C-j>", "<C-w>j", opts) -- Move to the bottom window
map("n", "<C-k>", "<C-w>k", opts) -- Move to the top window
map("n", "<C-l>", "<C-w>l", opts) -- Move to the right window

-- Resize with arrows (ensure the window is modifiable)
map("n", "<C-Up>", '<cmd>lua require("my_utils").safe_resize("-2")<CR>', opts)
map("n", "<C-Down>", '<cmd>lua require("my_utils").safe_resize("+2")<CR>', opts)
map("n", "<C-Left>", '<cmd>lua require("my_utils").safe_resize("-2", true)<CR>', opts)
map("n", "<C-Right>", '<cmd>lua require("my_utils").safe_resize("+2", true)<CR>', opts)
