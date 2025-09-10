return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        open_mapping = [[<M-i>]], -- Set Alt+i as the keybinding
        direction = "float",      -- Open terminal as a floating window
        shade_terminals = false,  -- Optional: shade the terminal background
        start_in_insert = true,   -- Start in insert mode
        insert_mappings = true,   -- Allow mappings in insert mode
        terminal_mappings = true, -- Allow mappings in terminal mode
        close_on_exit = true,     -- Close terminal when process exits
        float_opts = {
            border = "curved",    -- Optional: set border style (single, double, curved, etc.)
            width = math.floor(vim.o.columns * 0.9),
            height = math.floor(vim.o.lines * 0.8),
        },
    },
}
