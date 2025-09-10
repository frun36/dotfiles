return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
        require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        local dashboard = require('alpha.themes.dashboard')

        local ascii_art = {
            " _   _      _             ",
            "| | | | ___| | ___  _   _ ",
            "| |_| |/ _ \\ |/ _ \\| | | |",
            "|  _  |  __/ | (_) | |_| |",
            "|_| |_|\\___|_|\\___/ \\__,_|",
        }

        local triceratops = {
            "                        . - ~ ~ ~ - .                       ",
            "      ..     _      .-~               ~-.                   ",
            "     //|     \\ `..~                      `.                 ",
            "    || |      }  }              /       \\  \\                ",
            "(\\   \\\\ \\~^..'                 |         }  \\               ",
            " \\`.-~  0      /       }       |        /    \\              ",
            " (__          |       /        |       /      `.            ",
            "  `- - ~ ~ -._|      /_ - ~ ~ ^|      /- _      `.          ",
            "              |     /          |     /     ~-.     ~- _     ",
            "              |_____|          |_____|         ~ - . _ _~_-_",
        }

        local stegosaurus = {
            "                         .       .                             ",
            "                        / `.   .' \\                            ",
            "                .---.  <    > <    >  .---.                    ",
            "                |    \\  \\ - ~ ~ - /  /    |                    ",
            "                 ~-..-~             ~-..-~                     ",
            "             \\~~~\\.'                    `./~~~/                ",
            "   .-~~^-.    \\__/                        \\__/                 ",
            " .'  O    \\     /               /       \\  \\                   ",
            "(_____,    `._.'               |         }  \\/~~~/             ",
            " `----.          /       }     |        /    \\__/              ",
            "       `-.      |       /      |       /      `. ,~~|          ",
            "           ~-.__|      /_ - ~ ^|      /- _      `..-'   f: f:  ",
            "                |     /        |     /     ~-.     `-. _||_||_ ",
            "                |_____|        |_____|         ~ - . _ _ _ _ _>",
        }

        dashboard.config.layout = {
            { type = 'padding', val = 8 },
            { type = 'text',    val = triceratops, opts = { position = 'center', hl = 'Ignore' } },
            { type = 'padding', val = 2 },
            {
                type = 'group',
                val = {
                    dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
                    dashboard.button('f', '󰈞  Find file', ':Telescope find_files<CR>'),
                    dashboard.button('o', '󰥔  Recent files', ':Telescope oldfiles<CR>'),
                    dashboard.button('q', '🗙 Quit', ':qa<CR>'),
                },
                opts = { spacing = 1, position = 'center' },
            },
            { type = 'padding', val = 16 },
        }
    end
}
