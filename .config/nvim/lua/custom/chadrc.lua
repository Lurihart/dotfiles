-- Load the vim-tmux-navigator plugin and overwrite <C-l>
vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { silent = true })
vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>', { silent = true })
vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>', { silent = true })
vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>', { silent = true })
