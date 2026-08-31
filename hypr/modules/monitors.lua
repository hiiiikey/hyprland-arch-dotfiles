------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/


hl.monitor({
	output = "eDP-1",
	mode = "2560x1600@120.0",
	-- position = "2400x200",
	position = "1920x200",
	scale = 1.25
})

hl.monitor({
	output = "DP-3",
	mode = "1920x1080@60",
	position = "0x0",
	scale = 1
	-- scale = 0.8
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "1440x900@74.98",
	position = "3968x40",
	-- position = "4960x0",
	-- scale = 0.8,
	scale = 1,
	transform = 1

})
