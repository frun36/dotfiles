return {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {
        -- Snippet Engine
        {
            'L3MON4D3/LuaSnip',
            version = '2.*',
            build = (function()
                -- Build Step is needed for regex support in snippets.
                -- This step is not supported in many windows environments.
                -- Remove the below condition to re-enable on windows.
                if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
                    return
                end
                return 'make install_jsregexp'
            end)(),
            dependencies = {
                -- `friendly-snippets` contains a variety of premade snippets.
                --    See the README about individual language/framework/plugin snippets:
                --    https://github.com/rafamadriz/friendly-snippets
                {
                    'rafamadriz/friendly-snippets',
                    config = function()
                        require('luasnip.loaders.from_vscode').lazy_load()
                    end,
                },
            },
            opts = {},
        },
        'folke/lazydev.nvim',
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'default',
            -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
            --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
        },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            nerd_font_variant = 'mono',
        },

        completion = {
            -- By default, you may press `<c-space>` to show the documentation.
            -- Optionally, set `auto_show = true` to show the documentation after a delay.
            documentation = { auto_show = true, auto_show_delay_ms = 500 },

            ghost_text = {
                enabled = false,
            },


            menu = {
                draw = {
                    columns = { { "label", "label_description", gap = 1 }, { "kind_icon", gap = 1, "kind" } },
                },
                scrolloff = 2,
                scrollbar = true,
            },
        },

        sources = {
            default = { 'lsp', 'path', 'snippets', 'lazydev' },
            providers = {
                lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
            },
        },

        snippets = { preset = 'luasnip' },

        fuzzy = { implementation = 'prefer_rust_with_warning' },

        signature = { enabled = true },
    },

    init = function()
        -- Transparent blink menu & docs
        local function set_blink_transparency()
            vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "BlinkCmpMenuSel", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { bg = "NONE" })
        end

        -- Run once and after colorscheme changes
        set_blink_transparency()
        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = set_blink_transparency,
        })
    end,
}
