vim.pack.add({
	{
		src = _G.gh('rose-pine/neovim'),
		name = 'rose-pine',
	}
})

require('rose-pine').setup()
vim.cmd('colorscheme rose-pine')
