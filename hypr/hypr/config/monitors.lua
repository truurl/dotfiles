-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

local default_monitor = "DP-2"

hl.monitor({
	output = default_monitor,
	mode = "2560x1440@59.95",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "DP-5",
	mode = "2560x1440@59.95",
	position = "-2560x0",
	scale = "1",
})
