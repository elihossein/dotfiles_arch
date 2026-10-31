vim.g.mapleader = " "

local map = vim.keymap.set

-- Guardar
map("n", "<leader>w", "<cmd>w<CR>")

-- Salir
map("n", "<leader>q", "<cmd>q<CR>")

-- Quitar búsqueda resaltada
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Moverse entre splits
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Mostrar información del diagnóstico
vim.keymap.set("n", "<leader>a", vim.diagnostic.open_float)

-- Siguiente diagnóstico
--vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- Diagnóstico anterior
--vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)

-- Lista de diagnósticos
vim.keymap.set("n", "<leader>s", vim.diagnostic.setloclist)
