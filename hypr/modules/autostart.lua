-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("blueman-applet")
	hl.exec_cmd("waybar")
	hl.exec_cmd("lxsession")
	hl.exec_cmd("swaync")
	hl.exec_cmd("copyq")
	hl.exec_cmd("ibus-daemon")
	hl.exec_cmd("wlsunset -l 9.0 -L 38.7")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND DISPLAY XDG_CURRENT_DESKTOP=hyprland")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("wayland-pipewire-idle-inhibit")
	hl.exec_cmd("kdeconnectd")
	hl.exec_cmd("qpwgraph")
	--   hl.exec_cmd("waybar & hyprpaper & firefox")
end)
