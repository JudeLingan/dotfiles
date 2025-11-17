return {
	-- LSP SERVERS
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	{
		"mfussenegger/nvim-jdtls",
		config = function (_, opts)
			vim.lsp.config("jdtls", opts)
			vim.lsp.enable("jdtls")
		end
	},

	"niscolas/nvim-godot",
}
