return {
	-- Snippets
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},

	-- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},

	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
	},

	{
		"olimorris/codecompanion.nvim",
		config = true,
		opts = function()
			return {
				strategies = {
					chat = {
						adapter = "copilot",
					},
					inline = {
						adapter = "copilot",
					},
				},
			}
		end,
		dependencies = {
			{"nvim-lua/plenary.nvim", branch = "master"},
			"nvim-treesitter/nvim-treesitter",
		},
	},
}
