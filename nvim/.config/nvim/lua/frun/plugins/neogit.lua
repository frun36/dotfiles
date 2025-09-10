return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim",
    },
    keys = {
        { "<leader>gg", "<cmd>Neogit<cr>", desc = "[g]it status" },
        { "<leader>gl", "<cmd>Neogit log<cr>", desc = "[g]it [l]og" },
    },
    opts = {
        kind = "floating",
        popup = {
            kind = "floating",
        },
        log_view = {
            kind = "floating",
        },
        graph_style = "kitty",
        floating = {
            relative = "editor",
            width = 0.9,
            height = 0.9,
            style = "minimal",
            border = "rounded",
        },
    },
}
