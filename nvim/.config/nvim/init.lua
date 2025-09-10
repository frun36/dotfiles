vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        local set = vim.api.nvim_set_hl
        local groups = {
            "Normal", "NormalFloat", "FloatBorder",
            "Pmenu", -- "PmenuSel",
            "BlinkCmpMenu", "BlinkCmpMenuBorder",
            "BlinkCmpDoc", "BlinkCmpDocBorder",
        }
        for _, g in ipairs(groups) do
            set(0, g, { bg = "NONE" })
        end
        vim.api.nvim_set_hl(0, "BufferManagerModified", { link = "Special" })
    end,
})

require("frun")
