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

			-- Godot LSP
			require("lspconfig")["gdscript"].setup({
				name = "godot",
				cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
			})

			vim.diagnostic.config({
				underline = true,
				virtual_text = false,
				severity_sort = true,
				float = {scope = 'line'}
			})

		end,
	},

	{
		"mfussenegger/nvim-jdtls",
		config = function (_, opts)
			vim.lsp.config("jdtls", opts)
			vim.lsp.enable("jdtls")
		end
	},
}
