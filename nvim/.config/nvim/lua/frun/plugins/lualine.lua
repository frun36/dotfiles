return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "sainnhe/everforest" }, -- Ensure Everforest loads before lualine
    lazy = false,                            -- Load lualine immediately
    opts = {
        options = {
            theme = "everforest", -- Use Everforest theme for lualine
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            -- component_separators = { left = "|", right = "|" },
            -- section_separators = { left = " ", right = " " },
            disabled_filetypes = {}, -- Apply lualine to all filetypes
            globalstatus = true,     -- Single statusline for all windows
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff" },
            lualine_c = { { "filename", path = 1 } },
            lualine_x = { "filetype", "diagnostics" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { { "filename", path = 1 } },
            lualine_x = { "location" },
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {
            -- lualine_c = { require("harpoon_files").lualine_component },
        },
        extensions = { "fugitive" }, -- Enable extensions for common plugins
    },
}
