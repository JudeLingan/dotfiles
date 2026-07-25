function Recolor()
	package.loaded['colors-hypr'] = nil

	local status, colors = pcall(require, 'colors-hypr')
	if (status) then
		return
	end

	hl.config({
		general = {
			col = {
				active_border = colors.color_fg,
				inactive_border = colors.color_subtle,
			}
		}
	})
end
