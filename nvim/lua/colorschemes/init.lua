local run = function()
	if package.loaded['colorschemes.colors-nvim'] then
		package.loaded['colorschemes.colors-nvim'] = nil
	end
	local has_colors, colors = pcall(require, 'colorschemes.colors-nvim')

	if has_colors then
		local package_name = 'colorschemes.' .. colors.theme
		package.loaded[package_name] = nil
		require(package_name)
		vim.o.background = colors.background
	end
end

run()
vim.api.nvim_create_user_command('ColorschemesReload', run, { desc = 'Reload colorschemes after colors-nvim changes' })
