require("mason").setup()
require("mason-lspconfig").setup {
    -- ensure_installed = {},
    automatic_installation = false,
}

require('lspconfig').gleam.setup({})
require('lspconfig').ocamllsp.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').jdtls.setup({})
