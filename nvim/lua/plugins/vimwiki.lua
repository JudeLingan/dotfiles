vim.g.vimwiki_list = {
	{
		path = "~/Sync/vimwiki/",
		syntax = "markdown",
		ext = "md"
	},
}

vim.pack.add({
	_G.gh('vimwiki/vimwiki')
})
