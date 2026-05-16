-- hooks --
local hooks = function(ev)
	local name = ev.data.spec.name
	local kind = ev.data.kind
	if name == 'LuaSnip' and (kind == 'install' or kind == 'update') then
		vim.system({'make', 'install_jsregexp' }, { cwd = ev.data.path })
	end
end
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

-- plugins --
local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
	-- telescope
	gh('mason-org/mason.nvim'),
	gh('nvim-telescope/telescope-fzf-native.nvim'),
	gh('mason-org/mason-lspconfig.nvim'),

	-- lsp
	gh('nvim-lua/plenary.nvim'),
	gh('neovim/nvim-lspconfig'),

	-- completion
	gh('L3MON4D3/LuaSnip'),
	gh('onsails/lspkind.nvim'),
	gh('hrsh7th/nvim-cmp'),
	gh('hrsh7th/cmp-nvim-lsp'),
	gh('hrsh7th/cmp-buffer'),
	gh('hrsh7th/cmp-path'),
	gh('hrsh7th/cmp-cmdline'),
	gh('hrsh7th/nvim-cmp'),
	gh('L3MON4D3/LuaSnip'),
	gh('saadparwaiz1/cmp_luasnip'),

	-- colorschemes
	gh('tribela/transparent.nvim'),
	gh('nvim-treesitter/nvim-treesitter'),

	-- extra
	gh('nvim-telescope/telescope.nvim'),
	gh('nvim-tree/nvim-web-devicons'),
	gh('goolord/alpha-nvim'),
	gh('lewis6991/gitsigns.nvim'),
	gh('tpope/vim-fugitive'),
	gh('vimwiki/vimwiki')
})
