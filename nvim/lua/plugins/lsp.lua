return {
	-- LSP SERVERS
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},

		config = function (_, opts)
			require("mason").setup()
			require("mason-lspconfig").setup()

			-- LSP config
			vim.lsp.config('*', {
				root_markers = { '.git', '.hg' },
			})

			vim.lsp.enable("gdscript")

			vim.diagnostic.config({
				underline = true,
				virtual_text = false,
				severity_sort = true,
				float = {scope = 'line'}
			})

		end,
	},

	{
		'nvim-java/nvim-java',
		config = function()
			require('java').setup()
			vim.lsp.enable('jdtls')
		end,
	},
}
