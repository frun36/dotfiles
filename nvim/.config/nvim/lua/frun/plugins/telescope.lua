return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
            mappings = {
                ["i"] = {
                    ["<CR>"] = function(bufnr)
                        local actions = require("telescope.actions")
                        local actions_state = require("telescope.actions.state")
                        local single_selection = actions_state.get_selected_entry()
                        local multi_selection = actions_state.get_current_picker(bufnr):get_multi_selection()
                        if not vim.tbl_isempty(multi_selection) then
                            actions.close(bufnr)
                            for _, file in pairs(multi_selection) do
                                if file.path ~= nil then
                                    vim.cmd(string.format("edit %s", file.path))
                                end
                            end
                            -- vim.cmd(string.format("edit %s", single_selection.path))
                        else
                            actions.select_default(bufnr)
                        end
                    end
                },
            },
            -- layout_strategy = "vertical",
            layout_config = {
                height = 0.8,
                width = 0.9,
            },
        },
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>",                desc = "telescope find files" },
        { "<leader>fw", "<cmd>Telescope live_grep<CR>",                 desc = "telescope live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<CR>",                   desc = "telescope find buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<CR>",                 desc = "telescope help page" },
        { "<leader>ma", "<cmd>Telescope marks<CR>",                     desc = "telescope find marks" },
        { "<leader>fo", "<cmd>Telescope oldfiles<CR>",                  desc = "telescope find oldfiles" },
        { "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "telescope find in current buffer" },
        { "<leader>gb", "<cmd>Telescope git_branches<CR>",              desc = "telescope git branches" },
        { "<leader>gt", "<cmd>Telescope git_status<CR>",                desc = "telescope git status" },
        { "<leader>pt", "<cmd>Telescope terms<CR>",                     desc = "telescope pick hidden term" },
    },
}
