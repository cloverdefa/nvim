return {
  "dreamsofcode-io/ChatGPT.nvim",
  enabled = false,
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chatgpt").setup({
      async_api_key_cmd = "gpg --decrypt $HOME/openai.gpg",
    })
    local keymap = vim.keymap
    keymap.set("n", "<leader>cc", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
    -- keymap.set("n", "v", "<leader>ca", "<cmd>ChatGPTRun add_tests<CR>", { desc = "Add Tests" })
    -- keymap.set("n", "v", "<leader>cf", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix Bugs" })
  end,
}
