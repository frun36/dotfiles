local map = vim.keymap.set

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map({ "n", "x" }, "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

map({ "n" }, "<leader>x", "<CMD>bd<CR>")
