return {
	-- Transparent
	{
		'tribela/transparent.nvim',
		event = 'VimEnter',
		config = true,
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
