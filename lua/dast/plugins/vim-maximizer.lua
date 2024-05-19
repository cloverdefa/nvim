return {
  "szw/vim-maximizer",
  -- cond = false,
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
