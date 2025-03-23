return {
	-- COLORSCHEMES
	"rose-pine/neovim",

	-- Status line
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			require("config.treesitter")
		end
	},

}
