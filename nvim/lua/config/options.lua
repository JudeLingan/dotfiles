vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.signcolumn = 'yes'

vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 2000

vim.opt.winblend = 0
vim.opt.cursorline = true
vim.opt.completeopt = ("menu,menuone,popup,noselect")

vim.g.mapleader = ' '

vim.g.vimwiki_list = {
	{
		path = "~/Sync/vimwiki/",
		syntax = "markdown", 
		ext = "md"
	},
}
