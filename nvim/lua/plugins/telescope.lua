vim.pack.add({
	_G.gh('nvim-lua/plenary.nvim'),
	_G.gh('nvim-telescope/telescope-fzf-native.nvim'),
	_G.gh('nvim-telescope/telescope.nvim'),
})

-- setup
require('telescope').setup{
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		path_display = {'truncate'},
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key"
			}
		}
	},
}

-- keymaps
local scope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', scope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', scope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', scope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', scope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fd', scope.diagnostics, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fr', scope.lsp_references, { desc = 'Telescope LSP references' })
