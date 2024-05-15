return {
  "mfussenegger/nvim-dap-python",
  event = { "InsertEnter" },
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("dap-python").setup("~/.pyenv/shims/python3")
    local keymap = vim.keymap

    local dap = require("dap")
    keymap.set("n", "<Leader>b", function()
      dap.toggle_breakpoint()
    end)
    keymap.set("n", "<F5>", function()
      dap.continue()
    end)
  end,
}
