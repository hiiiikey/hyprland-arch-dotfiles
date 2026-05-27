-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("HYPRCURSOR_THEME", "Nordzy-cursors")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XCURSOR_THEME", "Nordzy-cursors")
hl.env("XCURSOR_SIZE", "24")


-- TOOLKIT BACKEND --
hl.env("GDK_BACKEND", "wayland,x11,*") -- GTK: Use Wayland if available; if not, try X11 and then any other GDK backend.
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Qt: Use Wayland if available, fall back to X11 if not.
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG SPECIFICATIONS -- Tellign XDG "We are on hyprland" --
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT VARIABLES --
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Use Wayland backend, fall back to X11 if Wayland is unavailable
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

-- NVIDIA SPECIFIC --
--To force GBM as a backend, 
-- set the following environment variables:

-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- hl.env("LIBVA_DRIVER_NAME", "nvidia") -- Hardware acceleration on NVIDIA GPUs

