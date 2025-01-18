require("mason").setup()
require("mason-lspconfig").setup {
    -- ensure_installed = {},
    automatic_installation = true,
}

require('lspconfig').gleam.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').jdtls.setup({})
require('lspconfig').gdscript.setup{}
