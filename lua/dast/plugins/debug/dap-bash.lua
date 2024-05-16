return {
  -- DAP for Bash
  {
    "mfussenegger/nvim-dap",
    event = "InsertEnter",
    ft = "sh",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")

      dap.adapters.bashdb = {
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/packages/bash-debug-adapter/bash-debug-adapter",
        name = "bashdb",
      }

      dap.configurations.sh = {
        {
          type = "bashdb",
          request = "launch",
          name = "Launch file",
          showDebugOutput = true,
          pathBashdb = vim.fn.stdpath("data") .. "/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb",
          pathBashdbLib = vim.fn.stdpath("data") .. "/mason/packages/bash-debug-adapter/extension/bashdb_dir",
          trace = true,
          file = "${file}",
          program = "${file}",
          cwd = "${workspaceFolder}",
          pathCat = "cat",
          pathBash = "/bin/bash",
          pathMkfifo = "mkfifo",
          pathPkill = "pkill",
          args = {},
          env = {},
          terminalKind = "integrated",
        },
      }

      vim.keymap.set("n", "<Leader>b", function()
        dap.toggle_breakpoint()
      end)
      vim.keymap.set("n", "<F5>", function()
        dap.continue()
      end)
    end,
  },
  -- DAP UI
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local dap = require("dap")
      require("dapui").setup(opts)

      dap.listeners.after.event_initialized["dapui_config"] = function()
        require("dapui").open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        -- require('dapui').close() -- Uncomment to close DAP UI when terminated
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        -- require('dapui').close() -- Uncomment to close DAP UI when exited
      end
    end,
  },
}
