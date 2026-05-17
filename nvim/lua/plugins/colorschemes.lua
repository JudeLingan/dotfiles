vim.pack.add({
	_G.gh('xiyaowong/transparent.nvim'),
	_G.gh('ellisonleao/gruvbox.nvim'),
	_G.gh('maxmx03/solarized.nvim'),
	{
		src = _G.gh('rose-pine/neovim'),
		name = 'rose-pine',
	},
})

-- Optional, you don't have to run setup.
require("transparent").setup({
	-- table: default groups
	groups = {
		'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
		'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
		'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
		'SignColumn',
		'EndOfBuffer',
	},
	-- table: additional groups that should be cleared
	extra_groups = {},
	-- table: groups you don't want to clear
	exclude_groups = {},
	-- function: code to be executed after highlight groups are cleared
	-- Also the user event "TransparentClear" will be triggered
	on_clear = function() end,
})
