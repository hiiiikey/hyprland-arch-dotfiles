-- Introduces i3-style tabs into hyprland

hl.config({
    group = {
        drag_into_group = true,
        merge_floated_into_tiled_on_groupbar = true,
        merge_groups_on_drag = true,
        merge_groups_on_groupbar = true,

        col = {
            border_active = { colors = { "rgba(88c0d0ee)", "rgba(a3be8cee)" }, angle = 45 },

            border_inactive = 0x4c566aaa, --"rgb(4c566a)",
            border_locked_active = { colors = { "rgb(8fbcbb)", "rgb(a3be8c)" }, angle = 180 },
            border_locked_inactive = "rgb(3b4252)",
        },
        groupbar = {
            enabled = true,
            font_family = "JetBrainsMono Nerd Font",
            font_size = 18,
            gradients = true,
            height = 30,
            -- priority = 3,
            render_titles = true,
            scrolling = true,
            text_color = "rgb(ffffff)",
            gaps_in = 5,
            gaps_out = 5,

            col = {
                active = "rgb(88c0d0)",
                inactive = "rgb(2e3440)",
                locked_active = "rgb(5e61ac)",
                locked_inactive = "rgb(888888)",
            }
        }
    }
})
