-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- Cursor
hl.env("XCURSOR_SIZE",              "12")
hl.env("HYPRCURSOR_SIZE",           "12")
hl.env("XCURSOR_THEME",             "Nordzy-cursors")
hl.env("GTK_CURSOR_THEME_NAME",     "Nordzy-cursors")
hl.env("GTK_CURSOR_THEME_SIZE",     "12")

-- QT
hl.env("QT_QPA_PLATFORMTHEME",               "qt5ct")
hl.env("QT_QPA_PLATFORM",                    "wayland;xcb")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR",        "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("MOZ_ENABLE_WAYLAND",                 "1")

-- XDG Session
hl.env("XDG_MENU_PREFIX",      "arch-")
hl.env("XDG_CURRENT_DESKTOP",  "Hyprland")
hl.env("XDG_SESSION_TYPE",     "wayland")
hl.env("XDG_SESSION_DESKTOP",  "Hyprland")

-- 2x GPU
-- hl.env("AQ_DRM_DEVICES", "/dev/dri/card0:/dev/dri/card1")

-- NVIDIA
-- hl.env("GBM_BACKEND",             "nvidia-drm")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME","nvidia")
-- hl.env("LIBVA_DRIVER_NAME",        "nvidia")
-- hl.env("AQ_NO_ATOMIC",             "1")