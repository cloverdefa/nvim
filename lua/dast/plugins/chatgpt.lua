return {
  "jackMort/ChatGPT.nvim",
  -- enabled = false,
  event = { "InsertEnter" },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local home = vim.fn.expand("$HOME")
    require("chatgpt").setup({
      api_key_cmd = "gpg --decrypt " .. home .. "/openai.gpg",
    })
    vim.keymap.set("n", "<Leader>cc", "<cmd>ChatGPT<CR>", { desc = "Open ChatGPT" })
    vim.keymap.set("n", "<Leader>cC", "<cmd>CHatGPTCompleteCode<CR>", { desc = "ChatGPT AutoComplete Code" })
    vim.keymap.set("n", "<Leader>ct", "<cmd>ChatGPTRun add_tests<CR>", { desc = "ChatGPT Add Test Code" })
  end,
}
