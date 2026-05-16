-- eager loaded
require('plugins.colorschemes')
require('plugins.vimwiki')

-- late loaded
vim.schedule(function()
	require('plugins.telescope')
	require('plugins.lsp')
	require('plugins.completion')
	require('plugins.git')
end)
