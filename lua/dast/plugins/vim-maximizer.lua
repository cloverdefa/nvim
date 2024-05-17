return {
  "szw/vim-maximizer",
  -- enabled = false,
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
