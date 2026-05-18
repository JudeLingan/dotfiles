vim.pack.add({
	_G.gh('mason-org/mason.nvim'),
	_G.gh('mason-org/mason-lspconfig.nvim'),
	_G.gh('neovim/nvim-lspconfig'),
	_G.gh('hrsh7th/cmp-nvim-lsp'),
})

require("mason").setup()
require("mason-lspconfig").setup()

-- LSP config
vim.lsp.config('*', {
	root_markers = { '.git', '.hg' },
	capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	severity_sort = true,
	float = {scope = 'line'}
})
