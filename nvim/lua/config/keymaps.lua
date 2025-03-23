
local scope = require('telescope.builtin')

-- telescope
vim.keymap.set('n', '<leader>ff', scope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', scope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', scope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', scope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fd', scope.diagnostics, { desc = 'Telescope help tags' })

-- tabs
vim.keymap.set('n', '<leader>tc', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>tx', vim.cmd.tabclose)

-- diagnostics
vim.keymap.set('n', '<leader>ds', vim.diagnostic.open_float)

-- copilot
vim.keymap.set('n', '<leader>cc', vim.cmd.CopilotChatToggle)
