return {
  "mfussenegger/nvim-dap",
  -- enabled = false,
  event = { "InsertEnter" },
  ft = "sh",
  config = function()
    local dap = require("dap")

    local keymap = vim.keymap

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

    keymap.set("n", "<Leader>b", function()
      dap.toggle_breakpoint()
    end)
    keymap.set("n", "<F5>", function()
      dap.continue()
    end)
  end,
}
