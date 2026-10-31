vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

vim.opt.clipboard = "unnamedplus"

-- Iconos de diagnósticos LSP
--vim.diagnostic.config({
--   signs = {
--      text = {
--            [vim.diagnostic.severity.ERROR] = "✘",
--            [vim.diagnostic.severity.WARN]  = "▲",
--            [vim.diagnostic.severity.INFO]  = "●",
--            [vim.diagnostic.severity.HINT]  = "◆",
--        },
--    },
--})
--
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "\u{f057}", -- círculo con X (nf-fa-circle_xmark)
      [vim.diagnostic.severity.WARN]  = "\u{f071}", -- triángulo con ! (nf-fa-triangle_exclamation)
      [vim.diagnostic.severity.INFO]  = "\u{f05a}", -- círculo con i
      [vim.diagnostic.severity.HINT]  = "\u{f0eb}", -- lamparita
    },
  },
})
