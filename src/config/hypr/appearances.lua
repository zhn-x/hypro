-----------------------
----- APPEARANCES -----
-----------------------

hl.config({
    general = {
        gaps_in                 = 5,
        gaps_out                = 10,
        border_size             = 2,
        extend_border_grab_area = 15,
        col = {
            active_border   = { colors = { "rgba(595959ee)", "rgba(595959ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = true,
        allow_tearing    = false,
        layout           = "master",
    },
    decoration = {
        rounding         = 10,
        rounding_power   = 2,
        active_opacity   = 0.8,
        inactive_opacity = 0.6,
        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "rgba(1a1a1add)",
        },
        blur = {
            enabled          = true,
            size             = 6,
            passes           = 2,
            ignore_opacity   = true,
            noise            = 0.02,
            contrast         = 1.5,
            xray             = true,
            new_optimizations = true,
        },
    },
})