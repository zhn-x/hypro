------------------
---- PROGRAMS ----
------------------

local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun -config ~/.config/rofi/config.rasi"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

-- Applications
hl.bind(mainMod .. " + T",           hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E",           hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + R",           hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + Delete",      hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + L",           hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + K",           hl.dsp.exec_cmd("hyprpicker"))

-- Window management
hl.bind("ALT + F4",                  hl.dsp.window.close())
hl.bind(mainMod .. " + V",           hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + F4",  hl.dsp.window.fullscreen())

-- Clipboard
-- hl.bind("SHIFT + C",          hl.dsp.exec_cmd("wl-paste --primary | wl-copy"))
-- hl.bind("SHIFT + V",          hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))

-- Screenshot
hl.bind("CTRL + Space",              hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots"))

-- Waybar refresh
hl.bind(mainMod .. " + SHIFT + F",   hl.dsp.exec_cmd("~/.config/waybar/refresh-waybar.sh"))

-- Monitor focus
hl.bind(mainMod .. " + Tab",         hl.dsp.focus({ monitor = "+1" }))
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ monitor = "-1" }))

-- Focus direction
hl.bind(mainMod .. " + left",        hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right",       hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",          hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",        hl.dsp.focus({ direction = "down" }))

-- Workspaces
for i = 1, 10 do
    local key = i % 10  -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace
hl.bind(mainMod .. " + S",           hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S",   hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse workspace scroll
hl.bind(mainMod .. " + mouse_down",  hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",    hl.dsp.focus({ workspace = "e-1" }))

-- Mouse window control
hl.bind(mainMod .. " + mouse:272",   hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273",   hl.dsp.window.resize(), { mouse = true })

-- Brightness (fn keys)
hl.bind("F5",  hl.dsp.exec_cmd("brightnessctl set 5%-"),  { locked = true, repeating = true })
hl.bind("F6",  hl.dsp.exec_cmd("brightnessctl set +5%"),  { locked = true, repeating = true })

-- Volume (fn keys)
hl.bind("F1",  hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"),    { locked = true })
hl.bind("F2",  hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"),     { locked = true, repeating = true })
hl.bind("F3",  hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"),     { locked = true, repeating = true })

-- Media keys
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),        { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),       { locked = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),     { locked = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                    { locked = true, repeating = true })
hl.bind("XF86AudioNext",         hl.dsp.exec_cmd("playerctl next"),                                    { locked = true })
hl.bind("XF86AudioPause",        hl.dsp.exec_cmd("playerctl play-pause"),                              { locked = true })
hl.bind("XF86AudioPlay",         hl.dsp.exec_cmd("playerctl play-pause"),                              { locked = true })
hl.bind("XF86AudioPrev",         hl.dsp.exec_cmd("playerctl previous"),                                { locked = true })
