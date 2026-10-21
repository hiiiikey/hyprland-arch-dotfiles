------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- My monitors from left to right

-- 23" dell
hl.monitor({
	output = "DP-1",
	mode = "1920x1080@60",
	position = "0x0",
	scale = 1
	-- scale = 0.8
})

-- Laptop Screen
hl.monitor({
	output = "desc:AU Optronics 0xF3A7",
	mode = "2560x1600@60.0",
	-- position = "2400x200",
	position = "1920x200", -- with a scale of 1.33
	-- position = "1920x222", -- with a scale of 1.6
	scale = 1.33

})

-- 19" Dell Laptop
hl.monitor({
	output = "HDMI-A-1",
	mode = "1440x900@74.98",
	position = "3840x0",
	-- position = "3520x0", -- with a scale of 1.6 for laptop monitor
	-- position = "4960x0",
	-- scale = 0.8,
	scale = 1,
	transform = 1

})
