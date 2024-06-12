-- Включить нумерацию строк + относительную
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.shell = "/bin/zsh"


-- Мышка
vim.opt.mouse = "a"
vim.opt.mousefocus = true


-- Еще раз нумерация но уже для строк
vim.opt.number = true
vim.opt.relativenumber = true


-- Clipboard (буфер???)
vim.opt.clipboard = "unnamedplus"

-- Отступы
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true


-- Разделители, возможно уберу что-то
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}


-- Линия длины кода до N символов
vim.opt.colorcolumn = "120"
