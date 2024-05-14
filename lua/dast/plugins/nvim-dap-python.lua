return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("dap-python").setup("~/.pyenv/shims/python3")
    vim.keymap.set("n", "<Leader>b", function()
      require("dap").toggle_breakpoint()
      vim.keymap.set("n", "<F5>", function()
        require("dap").continue()
      end)
    end)
  end,
}
