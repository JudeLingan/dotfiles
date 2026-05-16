-- tabs
vim.keymap.set('n', '<leader>tc', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>tx', vim.cmd.tabclose)

--buffers
vim.keymap.set('n', '<leader>bp', vim.cmd.bprev)
vim.keymap.set('n', '<leader>bn', vim.cmd.bnext)

-- diagnostics
vim.keymap.set('n', '<leader>ds', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>df', vim.lsp.buf.code_action)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
