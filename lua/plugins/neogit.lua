return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neogit").setup()
    vim.keymap.set("n", "<leader>o", ":Neogit cwd=%:p:h<CR>", {})
    vim.keymap.set("n", "<leader>l", ":Neogit commit<CR>", {})

  end,
}

