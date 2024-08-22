vim.g.mapleader = " "

-- Copy all text
vim.keymap.set('n', '<C-a>', '%y+<CR>')

-- NvimTree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')

-- BufferLine
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>l', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>c', ':bdelete<CR>')

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>td', ':TodoTelescope<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>s', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>sh', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>sv', ':ToggleTerm direction=vertical<CR>')

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Window split
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')  -- Vertical
vim.keymap.set('n', '<leader>h', ':split<CR>')   -- Horizontal

-- Edit text
vim.keymap.set('n', 'u', ':undo<CR>') -- Undo
vim.keymap.set('n', '<C-r>', ':redo<CR>') -- Redo

vim.keymap.set('n', '<leader>d', 'Yp') -- Fast dublicate line

