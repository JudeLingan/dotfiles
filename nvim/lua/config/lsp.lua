require("mason").setup()
require("mason-lspconfig").setup()

vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	severity_sort = true,
	float = {scope = 'line'}
})
