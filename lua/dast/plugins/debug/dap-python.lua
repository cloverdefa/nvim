return {
  -- DAP for Python
  {
    "mfussenegger/nvim-dap-python",
    event = "InsertEnter",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-python").setup("~/.pyenv/shims/python3")

      local dap = require("dap")

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
