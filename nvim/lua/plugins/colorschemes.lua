return {
	-- Transparent
	{
		'tribela/transparent.nvim',
		event = 'VimEnter',
		opts = {
			auto = true,
			extra_groups = {},
			excludes = { 'CursorLineNr', 'SignColumn' }
		},
		config = function(_, opts)
			require('transparent').setup(opts)
		end,
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "java" },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },  
		}
	},
}
