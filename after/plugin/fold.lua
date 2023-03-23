--[[ vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
-- vim.o.foldmethod = 'fold-syntax'

vim.keymap.set('n', 'g-', '<cmd> foldclose<CR>', { silent = true, noremap = true })
vim.keymap.set('n', 'g=', '<cmd> foldopen<CR>', { silent = true, noremap = true })

require('ufo').setup() ]]
