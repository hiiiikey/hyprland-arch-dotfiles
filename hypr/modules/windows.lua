----------------------
---- WORKSPACES ----
---------------------

hl.workspace_rule({
	workspace = "1",
	monitor = "eDP-1",
	default = true
})

----------------
---- WINDOWS ----
-----------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name           = "suppress-maximize-events",
	match          = { class = ".*" },

	suppress_event = "maximize",
})


hl.window_rule({
	-- Fix some dragging issues with XWayland
	name     = "fix-xwayland-drags",
	match    = {
		class      = "^$",
		title      = "^$",
		xwayland   = true,
		float      = true,
		fullscreen = false,
		pin        = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name  = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move  = "20 monitor_h-120",
	float = true,
})

-----------------------------
--- FLOATING WINDOW RULES ---
-----------------------------

-- TEMPLATE FOR COPY-PASTING THROUGHOUT THIS SECTION
-- hl.window_rule({
-- 	name = "",
-- 	match = {
-- 		class = ""
-- 	},
-- 	float = true
-- })


hl.window_rule({
	match = {
		title = "Picture-in-Picture",
	},
	float = true,
	pin = true
})


hl.window_rule({
	name = "float copyq",
	match = {
		title = "CopyQ"
	},
	float = true
})


hl.window_rule({
	name = "float Qalculate",
	match = {
		title = "Qalculate!"
	},
	float = true
})

hl.window_rule({
	name = "float wihotspot",
	match = {
		class = "wihotspot"
	},
	float = true
})

hl.window_rule({
	name = "float MPV",
	match = {
		class = "mpv"
	},
	float = true
})

hl.window_rule({
	name = "Thunar File Operation Progress Window",
	match = {
		class = "thunar",
		title = "File Operation Progress"
	},
	float = true
})

hl.window_rule({
	name = "Brave Bitwarden Extension",
	match = {
		class = "Brave-browser",
		title = "Bitwarden"
	},
	float = true
})

hl.window_rule({
	name = "Blueman Floating Rule",
	match = {
		class = "blueman-manager"
	},
	float = true
})

hl.window_rule({
	name = "Zen Bitwarden Extension",
	match = {
		class = "zen",
	},
	suppress_event = "maximize",
	
})



hl.window_rule({
	name = "Leafpad Floating Rule",
	match = {
		class = "Leafpad"
	},
	float = true
})

hl.window_rule({
	name = "pavucontrol floating rule",
	match = {
		class = "org.pulseaudio.pavucontrol"
	},
	float = true
})

hl.window_rule({
	name = "GNOME Network Displays (for casting)",
	match = {
		class = "org.gnome.NetworkDisplays"
	},
	float = true
})

hl.window_rule({
	name = "Network Connections App FLoating Rule",
	match = {
		class = "nm-connection-editor"
	},
	float = true
})

hl.window_rule({
	name = "fdm floating rule",
	match = {
		class = "fdm"
	},
	float = true
})

hl.window_rule({
	name = "Catfish File Search",
	match = {
		class = "catfish"
	},
	float = true
})

hl.window_rule({
	name = "RustDesk floating rule",
	match = {
		class = "rustdesk"
	},
	float = true
})

hl.window_rule({
	name = "Zen Bookmarks Library Floating Rule",
	match = {
		class = "zen",
		title = "Library"
	},
	float = true
})

hl.window_rule({
	name = "Audacious Floating Rule",
	match = {
		class = "Audacious"
	},
	float = true
})

hl.window_rule({
	name = "NetworkManager TUI floating rule",
	match = {
		title = "nmtui"
	},
	float = true
})

hl.window_rule({
	name = "Sign in with google",
	match = {
		class = "zen",
		title = "Sign in - Google Accounts — Zen Browser"
	},
	float = true
})

hl.window_rule({
    name = "Thunar Rename Dialog",
    match = {
        class = "thunar",
        title = ".*Rename.*"
    },
    float = true
})

-- Fix for Xwayland windows like Discord sharing entire screens or wayland windows
--  https://wiki.hypr.land/Useful-Utilities/Screen-Sharing/#xwayland
hl.window_rule({
	name = "xwayland-video-bridge-fixes",
	match = {
		class = "xwaylandvideobridge"
	},

	no_initial_focus = true,
	no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = {1, 1},
    opacity = 0.0,
})

