return {
  "folke/which-key.nvim",
  -- cond = false,
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    --BUG: conflicting keymaps "gc"
    -- unmap gc keymap
    vim.api.nvim_set_keymap("n", "gc", "", { noremap = true, silent = true })
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
