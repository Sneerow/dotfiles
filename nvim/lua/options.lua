-- Set leader key
vim.g.mapleader = " "
vim.g.localmapleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Set tab settings
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- Set lines settings
vim.wo.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 15
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "pink"})

-- Easier pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Always show signcolumn to avoid shifting text on mode change
vim.o.signcolumn = "yes"
