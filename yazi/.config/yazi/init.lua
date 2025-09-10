require("yatline"):setup({
    show_background = true,

    status_line = {
        left = {
            section_a = {
                { type = "string", custom = false, name = "tab_mode" },
            },
            section_b = {
                { type = "string", custom = false, name = "hovered_size" },
            },
            section_c = {
                { type = "string", custom = false, name = "hovered_name" },
            }
        },
        right = {
            section_a = {
                { type = "string", custom = false, name = "cursor_position" },
            },
            section_b = {
                { type = "string", custom = false, name = "cursor_percentage" },
            },
            section_c = {
                { type = "coloreds", custom = false, name = "permissions" },
            }
        },

    },
    style_a = {
        fg = "#1e2326",
        bg_mode = {
            normal = "#a7c080",
            select = "#e67e80",
            un_set = "#d3c6aa",
        }
    },
    style_b = {
        bg = "#374145",
        fg = "#a7c080",
    },
    style_c = {
        bg = "#272e33",
        fg = "#7a8478",
    },
})

require("git"):setup()
