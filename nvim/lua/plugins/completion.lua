local hooks = function(ev)
	local name = ev.data.spec.name
	local kind = ev.data.kind
	if name == 'LuaSnip' and (kind == 'install' or kind == 'update') then
		vim.system({'make', 'install_jsregexp' }, { cwd = ev.data.path })
	end
end
vim.api.nvim_create_autocmd('PackChanged', { callback = hooks })

vim.pack.add({
	_G.gh('L3MON4D3/LuaSnip'),
	_G.gh('onsails/lspkind.nvim'),
	_G.gh('hrsh7th/nvim-cmp'),
	_G.gh('hrsh7th/cmp-nvim-lsp'),
	_G.gh('hrsh7th/cmp-buffer'),
	_G.gh('hrsh7th/cmp-path'),
	_G.gh('hrsh7th/cmp-cmdline'),
	_G.gh('hrsh7th/nvim-cmp'),
	_G.gh('saadparwaiz1/cmp_luasnip'),
})

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-c>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	}, {
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})
