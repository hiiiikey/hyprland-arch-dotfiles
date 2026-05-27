---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "alacritty"
local fileManager = "thunar"
local menu        = "rofi -show drun"
local browser     = "zen-browser"
local emoji       = "rofi -show emoji"
---------------------
---- KEYBINDINGS ----
---------------------

local mainMod     = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + t", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + SHIFT + E",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + S", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd(emoji))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Move Windows with mainMod + SHIFT + arrow keys
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }, { group_aware = true }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }, { group_aware = true }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }, { group_aware = true }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }, { group_aware = true }))


-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + TAB", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + minus", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- CUSTOM KEYBINDINGS --

hl.bind(mainMod .. "+ B", hl.dsp.exec_cmd(browser))              -- Launch Zen
hl.bind(mainMod .. "+ SHIFT + V", hl.dsp.exec_cmd("copyq show")) -- Show clipboard
hl.bind(mainMod .. "+ CONTROL + V", hl.dsp.exec_cmd("pavucontrol"))
hl.bind("XF86Launch7", hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + F4", hl.dsp.exec_cmd("~/.local/bin/power-script.sh"))
-- hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("~/.local/bin/tlp-switch.sh"))
hl.bind("CONTROL + SHIFT + ESCAPE", hl.dsp.exec_cmd("alacritty -e btop --no-tty --force-utf"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" })) -- Toggle window fullscreen


-- Window screenshot: save and copy
hl.bind(mainMod .. "+ PRINT",
	hl.dsp.exec_cmd([[
        FILE="$HOME/Pictures/Screenshots/$(date +'Screenshot from %Y-%m-%d %H-%M-%S.png')"

        hyprshot -m active -m output \
            -f "$(basename "$FILE")" \
            -o "$HOME/Pictures/Screenshots" && \
        wl-copy --type image/png < "$FILE"
    ]])
)

-- Region screenshot: save and copy
hl.bind("PRINT",
	hl.dsp.exec_cmd([[
		        FILE="$HOME/Pictures/Screenshots/$(date +'Screenshot from %Y-%m-%d %H-%M-%S.png')"

        hyprshot -m region -z \
            -f "$(basename "$FILE")" \
            -o "$HOME/Pictures/Screenshots" && \
        wl-copy --type image/png < "$FILE"
]])
)


---------------------------------------------------
-------------------- Manual Layout -----------------
------------
hl.bind(mainMod .. " + H", hl.dsp.layout("h"))
hl.bind(mainMod .. " + V", hl.dsp.layout("v"))
----------------------------------------------------
----------------------------------------------------

-------- Tabbed Windows (GROUPS)
hl.bind(mainMod .. " + W", hl.dsp.group.toggle())
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.group.lock_active({ action = "toggle" }))

hl.bind(mainMod .. " + SHIFT + CONTROL + left", hl.dsp.window.move({into_or_create_group = "left"}))
hl.bind(mainMod .. " + SHIFT + CONTROL + right", hl.dsp.window.move({into_or_create_group = "right"}))

hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd([[killall waybar && waybar &]]))
