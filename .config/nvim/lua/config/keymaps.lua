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

-- Abrir terminal
map("n", "<C-t>", "<cmd>sp|term<cr>")

-- Salir del modo insert de terminal
map("t", "<Esc>", [[<C-\><C-n>]])

-- Mostrar información del diagnóstico
vim.keymap.set("n", "<leader>a", vim.diagnostic.open_float)

-- Siguiente diagnóstico
--vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- Diagnóstico anterior
--vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)

-- Lista de diagnósticos
vim.keymap.set("n", "<leader>s", vim.diagnostic.setloclist)

-- Ir a la declaración
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

-- Ir a la definición
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- Mostrar documentación
vim.keymap.set("n", "K", vim.lsp.buf.hover)
