local gaps_on = false

local nogaps = {
	gaps_in = 0,
	gaps_out = 0,
	rounding = 0
}

local yesgaps = {
	gaps_in = 8,
	gaps_out = 8,
	rounding = 8
}

local function refresh_gaps()
	local gaps
	if gaps_on == true then
		gaps = yesgaps
	else
		gaps = nogaps
	end
	hl.config({
		general = {
			gaps_in = gaps.gaps_in,
			gaps_out = gaps.gaps_out,
		},
		decoration = {
			rounding = gaps.rounding,
		}
	})
end

local function set_gaps_on(value)
	gaps_on = value
	refresh_gaps()
end

local function toggle_gaps()
	set_gaps_on(not gaps_on)
end

local function set_gaps_size(value)
	assert(value["gaps_in"] ~= nil and value["gaps_out"] ~= nil and value["rounding"] ~= nil)
	yesgaps = value
end

return {
	toggle = function() toggle_gaps() end,
	set_gaps_on = function(value) set_gaps_on(value) end,
	set_size = function(value) set_gaps_size(value) end
}
