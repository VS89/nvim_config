vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')


-- Add comment to line
vim.keymap.set('n', 'gc', '<S-i># <Esc>')
vim.keymap.set('v', 'gcc', '<C-v><S-i># <Esc>')
