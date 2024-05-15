return {
  "rcarriga/nvim-dap-ui",
  event = { "InsertEnter" },
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },
  config = function(_, opts)
    local dap = require("dap")
    require("dapui").setup(opts)

    dap.listeners.after.event_initialized["dapui_config"] = function()
      require("dapui").open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
      -- Commented to prevent DAP UI from closing when unit tests finish
      -- require('dapui').close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
      -- Commented to prevent DAP UI from closing when unit tests finish
      -- require('dapui').close()
    end

    -- Add dap configurations based on your language/adapter settings
    -- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
    -- dap.configurations.xxxxxxxxxx = {
    --   {
    --   },
    -- }
  end,
}
