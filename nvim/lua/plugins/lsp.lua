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

	{
		"lommix/godot.nvim",
		lazy = true,
		cmd = { "GodotDebug", "GodotBreakAtCursor", "GodotStep", "GodotQuit", "GodotContinue" },
		opts = {
			-- Path to your Godot executable
			bin = "godot",

			-- DAP configuration
			dap = {
				host = "127.0.0.1",
				port = 6006,
			},

			-- GUI settings for console (passed to nvim_open_win)
			gui = {
				console_config = {
					anchor = "SW",
					border = "double",
					col = 1,
					height = 10,
					relative = "editor",
					row = 99999,
					style = "minimal",
					width = 99999,
				},
			},

			-- Expose user commands automatically (optional)
			expose_commands = true,
		},
	},
}
