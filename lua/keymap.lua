local keymap = vim.keymap.set


-- keymap('n', 'gw', '<C-w>w')

-- Split window Horizontal
keymap('n', '-', ':split<Return><C-w>w')
-- Split windowo Vertical
keymap('n', '\\', ':vsplit<Return><C-w>w')

-- Move window
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Resize window

keymap('n', '<Left>', '<C-w><')
keymap('n', '<Right>', '<C-w>>')
keymap('n', '<Up>', '<C-w>+')
keymap('n', '<Down>', '<C-w>-')

-- Close window
--
keymap('n', 'q', ':q<CR>')
