require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end
}

require'lspconfig'.gdscript.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.lua_ls.setup{}

vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	severity_sort = true,
	float = {scope = 'line'}
})
