return {
  "rmagatti/auto-session",
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>wr", "<cmd>SessionSearch<CR>", desc = "Session search" },
    { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
    { "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
  },
  opts = {
    auto_restore = false,
    bypass_save_filetypes = { "alpha", "dashboard" },
    suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
  },
}
