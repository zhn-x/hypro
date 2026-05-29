--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Suppress maximize events for all windows
hl.window_rule({
    name           = "suppress-maximize-events",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix XWayland drags
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Move hyprland-run
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})

-- File dialogs (by title)
hl.window_rule({
    name  = "float-file-dialogs",
    match = { title = "^(Open File|Open|Save|Save As|Export|Import|Choose File|Rename)" },
    float = true,
    center = true,
})

-- Generic dialog windows
hl.window_rule({ match = { class = ".*[Dd]ialog.*" }, float = true })
hl.window_rule({ match = { title = ".*[Dd]ialog.*" }, float = true })

-- Specific titles
hl.window_rule({ match = { title = "^Rename.*$"                    }, float = true })
hl.window_rule({ match = { title = "^Authentication Required$"     }, float = true })
hl.window_rule({ match = { title = "^Add Folder to Workspace$"     }, float = true })
hl.window_rule({ match = { title = "^Confirm to replace files$"    }, float = true })
hl.window_rule({ match = { title = "^File Operation Progress$"     }, float = true })
hl.window_rule({ match = { title = "^File Upload.*"                }, float = true })
hl.window_rule({ match = { title = "^Choose wallpaper.*"           }, float = true })
hl.window_rule({ match = { title = "^Library.*"                    }, float = true })

-- Specific classes
hl.window_rule({ match = { class = "^[Xx]dg-desktop-portal-gtk$"  }, float = true })
hl.window_rule({ match = { class = "^nm-applet$"                   }, float = true })
hl.window_rule({ match = { class = "^nm-connection-editor$"        }, float = true })
-- hl.window_rule({ match = { class = "^kvantummanager$"           }, float = true })
hl.window_rule({ match = { class = "^qt5ct$"                       }, float = true })
hl.window_rule({ match = { class = "^qt6ct$"                       }, float = true })
hl.window_rule({ match = { class = "^nwg-look$"                    }, float = true })
hl.window_rule({ match = { class = "^org.kde.ark$"                 }, float = true })
hl.window_rule({ match = { class = "^org.pulseaudio.pavucontrol$"  }, float = true })

-- Thunar specific
hl.window_rule({ match = { class = "^Thunar$", title = "^File Operation Progress$" }, float = true })
hl.window_rule({ match = { class = "^Thunar$", title = ".*Rename.*"                }, float = true })
hl.window_rule({ match = { class = "^Thunar$", title = ".*Copy.*|.*Move.*|.*Delete.*" }, float = true })

-- Kitty terminal apps
hl.window_rule({ match = { class = "^kitty$", title = "^fastfetch$" }, float = true })
hl.window_rule({ match = { class = "^kitty$", title = "^btop$"      }, float = true })
hl.window_rule({ match = { class = "^kitty$", title = "^htop$"      }, float = true })
