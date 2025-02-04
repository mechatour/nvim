return {
   "mfussenegger/nvim-dap",
   dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "mfussenegger/nvim-dap-python",
   },
   config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("dapui").setup()

      -- configure codelldb adapter (C, C++, Rust and zig)
      dap.adapters.codelldb = {
         type = "server",
         port = "${port}",
         executable = {
            command = "codelldb",
            args = { "--port", "${port}" },
         },
      }

      -- setup a debugger config for zig projects
      dap.configurations.zig = {
         {
            name = "Launch",
            type = "codelldb",
            request = "launch",
            program = "${workspaceFolder}/zig-out/bin/${workspaceFolderBasename}",
            cwd = "${workspaceFolder}",
            stopOnEntry = false,
            args = {},
         },
      }

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

      vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<Leader>dc", dap.continue, {})
      vim.keymap.set("n", "<Leader>do", dap.step_over, {})
      vim.keymap.set("n", "<Leader>di", dap.step_into, {})
   end,
}
