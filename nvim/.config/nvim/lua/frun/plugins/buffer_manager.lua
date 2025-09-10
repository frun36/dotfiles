return {
    'j-morano/buffer_manager.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        select_menu_item_commands = {
            edit = {
                key = "<CR>",
                command = "edit",
            },
            vsp = {
                key = "v",
                command = "vsplit",
            },
            sp = {
                key = "h",
                command = "split",
            },
        }
    },
    keys = {
        { "<leader>s", function() require("buffer_manager.ui").toggle_quick_menu() end, desc = "Buffer Manager: Toggle buffer menu" },
        { "<TAB>",     function() require("buffer_manager.ui").nav_next() end,          desc = "Buffer Manager: Next buffer" },
        { "<S-TAB>",   function() require("buffer_manager.ui").nav_prev() end,          desc = "Buffer Manager: Previous buffer" },
    },
}
