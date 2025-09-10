-- return {
--     "askfiy/visual_studio_code",
--     priority = 100,
--     config = function()
--         vim.cmd([[colorscheme visual_studio_code]])
--     end,
-- }
return {
    "sainnhe/everforest",
    lazy = false,    -- Load the plugin immediately (not lazily)
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
        -- Optional: Set global variables for Everforest configuration
        vim.g.everforest_background = "hard"                 -- Options: soft, medium, hard
        vim.g.everforest_better_performance = 1              -- Improves performance
        vim.g.everforest_enable_italic = 0                   -- Enable italics for comments and certain syntax
        vim.g.everforest_disable_bold = 0                    -- Keep bold text enabled
        vim.g.everforest_transparent_background = 1          -- Set to 1 for transparent background
        vim.g.everforest_ui_contrast = "high"                -- Options: low, high
        vim.g.everforest_diagnostic_text_highlight = 1       -- Highlight diagnostic text
        vim.g.everforest_diagnostic_line_highlight = 1       -- Highlight diagnostic lines
        vim.g.everforest_diagnostic_virtual_text = "colored" -- Options: grey, colored

        -- Apply the Everforest colorscheme
        vim.cmd([[colorscheme everforest]])
    end,
}
