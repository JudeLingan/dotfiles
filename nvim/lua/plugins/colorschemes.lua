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
		config = function ()
			require("config.treesitter")
		end,
	},
}
