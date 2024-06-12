vim.g.mapleader = " "

-- Сохранить


-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')


-- Add comment to line in python
-- vim.keymap.set('n', 'gc', '<S-i># <Esc>')
-- vim.keymap.set('v', 'gcc', '<C-v><S-i># <Esc>')

-- neotest mapping
-- Run test from current file
vim.keymap.set('n', '<leader>rtf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>')
-- Toggle Summary
vim.keymap.set('n', '<leader>ts', ':lua require("neotest").summary.toggle()<CR>')
-- Toggle Watch
vim.keymap.set('n', '<leader>tw', ':lua require("neotest").watch.toggle(vim.fn.expand("%"))<CR>')
-- Show output
vim.keymap.set('n', '<leader>to', ':lua require("neotest").output.open({ enter = true, auto_close = true})<CR>')
-- Show output panel
vim.keymap.set('n', '<leader>t0', ':lua require("neotest").output_panel.toggle()<CR>')
-- Возможно запуск тест под курсором, надо попробовать
vim.keymap.set('n', '<leader>mr', ':lua require("neotest").run.run()<CR>')
-- vim.api.nvim_set_keymap()
-- vim.keymap.set('n', '<leader>mr', ':lua require("neotest").run.run()<CR>')
