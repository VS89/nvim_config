vim.g.mapleader = " "

-- Отключить перенос строк
vim.o.wrap = false

-- LazyGit
vim.keymap.set( "n", "<leader>lg", "<cmd>LazyGit<CR>" )

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')


-- Add comment to line in python
-- vim.keymap.set('n', 'gc', '<S-i># <Esc>')
-- vim.keymap.set('v', 'gcc', '<C-v><S-i># <Esc>')

-- neotest mapping
-- Запуск всех тестов в рамках тестового файла 
-- rtf - run test file
vim.keymap.set('n', '<leader>rtf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>')
-- Запуск теста, который находиться под курсором
-- rct - run current test
vim.keymap.set('n', '<leader>rct', ':lua require("neotest").run.run()<CR>')
-- Остановка выполнения всех тестов
-- sat - stop all tests
vim.keymap.set('n', '<leader>sat', ':lua require("neotest").run.stop()<CR>')
-- Просмотр результатов теста, курсор должен переместиться внутрь и можно будет перемещаться по результатам тестов
-- to - test output
vim.keymap.set('n', '<leader>to', ':lua require("neotest").output.open({ enter = true, auto_close = true})<CR>')
-- Показывает справа колонку с деревом тестов и статусами запускаемых тестов
vim.keymap.set('n', '<leader>ts', ':lua require("neotest").summary.toggle()<CR>')
-- Видимо можно следить только за конкретным тестом, пока не разобрался и не использовал
vim.keymap.set('n', '<leader>tw', ':lua require("neotest").watch.toggle(vim.fn.expand("%"))<CR>')
-- Открывает панель вывода ниже кода, как будто в отдельном табе, иногда будет полезно
vim.keymap.set('n', '<leader>t0', ':lua require("neotest").output_panel.toggle()<CR>')
-- Запуск конкретного теста с формированием отчета для allure
-- twr - test with report
vim.keymap.set('n', '<leader>twr', ':lua require("neotest").run.run({adapters = {require("neotest-python")({ args = {"--alluredir=/Users/valentins/Desktop/nvim_test_results"}})}})<CR>')
-- Запуске текущего файла с тестами с формированием отчета для allure
-- fwr - file with report
vim.keymap.set('n', '<leader>fwr', ':lua require("neotest").run.run({vim.fn.expand("%"), adapters = {require("neotest-python")({ args = {"-n4", "--alluredir=/Users/valentins/Desktop/nvim_test_results"}})}})<CR>')


-- Запуск питоновского скрипта с помощью poetry
vim.keymap.set('n', '<leader>rpf', ':!poetry run python % <CR>')

-- Запуск питоновского скрипта просто через python
vim.keymap.set('n', '<leader>rf', ':!python3 % <CR>')


-- hotkeys для переключения между открытыми буферами
-- Предыдущий буфер
vim.keymap.set('n', '<leader>bp', ':bprevious <CR>')
-- Следующий буфер
vim.keymap.set('n', '<leader>bn', ':bnext <CR>')

