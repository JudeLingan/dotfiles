local function register_package_command(package, cmd)
	vim.api.nvim_create_user_command(cmd, function(opts)
		vim.api.nvim_del_user_command(cmd)
		require(package)
		if (opts['args']) then
			vim.cmd(cmd .. ' ' .. opts.args)
		else
			vim.cmd(cmd)
		end
	end, { nargs = '*' })
end

local function register_package_commands(package, cmds)
	for i in pairs(cmds) do
		register_package_command(package, cmds[i])
	end
end

-- lazy load on command --
register_package_commands('plugins.vimwiki', {
	'VimwikiIndex',
	'VimwikiDiaryIndex',
	'VimwikiMakeDiaryNote',
})

register_package_commands('plugins.telescope', { 'Telescope' })

-- eager load --
require('plugins.transparent')
require('plugins.lsp')

-- late load --
vim.schedule(function()
	require('plugins.telescope')
	require('plugins.vimwiki')
	require('plugins.completion')
	require('plugins.git')
end)
