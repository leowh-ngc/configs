vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

map('i', '<leader>ll', '<esc>la', opt)
map('i', '<leader>hh', '<esc>i', opt)
map('i', '<leader>jj', '<esc>o', opt)
map('i', '<leader>kk', '<esc>O', opt)

-- 分屏操作
map("n", "sv", ":vsp<CR>", opt) -- 垂直分
map("n", "sh", ":sp<CR>", opt) -- 水平分
map("n", "sc", "<C-w>c", opt) -- 关闭当前
map("n", "so", "<C-w>o", opt) -- 关闭其他
-- 分屏窗口切换 alt + hjkl
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
