return {
    clangd = {},
    rust_hdl = {},
    -- gopls = {},
    pyright = {},
    rust_analyzer = {},
    -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
    --
    -- Some languages (like typescript) have entire language plugins that can be useful:
    --    https://github.com/pmizio/typescript-tools.nvim
    --
    -- But for many setups, the LSP (`ts_ls`) will work just fine
    -- ts_ls = {},
    --

    html = {},
    lua_ls = {
        -- cmd = { ... },
        -- filetypes = { ... },
        -- capabilities = {},
        settings = {
            Lua = {
                completion = {
                    callSnippet = 'Replace',
                },
                runtime = { version = 'LuaJIT' },
                workspace = {
                    checkThirdParty = false,
                    library = {
                        '${3rd}/luv/library',
                        unpack(vim.api.nvim_get_runtime_file('', true))
                    }
                },
                -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
                diagnostics = { disable = { 'missing-fields' } },
            },
        },
    },

    texlab = {},
}
