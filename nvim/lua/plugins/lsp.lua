require("mason").setup()
require("mason-lspconfig").setup()

-- LSP config
vim.lsp.config('*', {
	root_markers = { '.git', '.hg' },
	capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable("gdscript")
vim.lsp.enable("ts_ls")

vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	severity_sort = true,
	float = {scope = 'line'}
})
