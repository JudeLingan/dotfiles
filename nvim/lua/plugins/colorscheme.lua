return {
	-- COLORSCHEMES
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,
				disable_background = false,
				disable_float_background = false,

				enable = {
					terminal = true,
					legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				palette = {
					-- Override the builtin palette per variant
					-- moon = {
					--     base = '#18191a',
					--     overlay = '#363738',
					-- },
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
					Normal = {bg = "none"},
					NormalNC = {bg = "none"},
					FloatBorder = {bg = "none", fg = "surface"},
					CmpItemMenu = {bg = "surface"},
				},

				before_highlight = function(group, highlight, palette)
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
		},
		config = function (_, opts)
			require("rose-pine").setup(opts)
		end,
	},

	{
		"RedsXDD/neopywal.nvim",
		name = "neopywal",
		opts = {
			transparent_background = true,
		},

		config = function (_, opts)
			require("neopywal").setup(opts)
			vim.cmd.colorscheme("neopywal")
		end,
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
