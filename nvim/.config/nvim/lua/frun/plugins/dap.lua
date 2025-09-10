return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
        vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/Continue" })
        vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" })
        vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" })
        vim.keymap.set("n", "<S-F11>", dap.step_out, { desc = "Step out" })
        vim.keymap.set("n", "<C-F10>", dap.run_to_cursor, { desc = "Run to cursor" })

        -- terminate or restart
        vim.keymap.set("n", "<C-S-F5>", dap.terminate, { desc = "Terminate session" })
        vim.keymap.set("n", "<C-F5>", function()
            dap.terminate()
            dap.run_last()
        end, { desc = "Restart session" })

        vim.keymap.set("n", "<Leader>de", dapui.eval, { desc = "Eval under cursor" })
        vim.keymap.set("v", "<Leader>de", dapui.eval, { desc = "Eval selection" })

        dap.adapters.gdb = {
            type = "executable",
            command = "gdb",
            args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
        }

        dap.configurations.c = {
            {
                name = "Launch C/C++ program",
                type = "gdb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            }
        }
        -- Reuse same config for C
        dap.configurations.cpp = dap.configurations.c
    end
}
