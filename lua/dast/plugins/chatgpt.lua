return {
  "jackMort/ChatGPT.nvim",
  enabled = false,
  evnet = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local home = vim.fn.expand("$HOME")
    local keymap = vim.keymap
    require("chatgpt").setup({
      api_key_cmd = "gpg --decrypt " .. home .. "/openai.gpg",
    })
    keymap.set("n", "<Leader>cc", "<cmd>ChatGPT<CR>", { desc = "Open ChatGPT" })
    keymap.set("n", "<Leader>cm", "<cmd>CHatGPTCompleteCode<CR>", { desc = "ChatGPT AutoComplete Code" })
    keymap.set("n", "<Leader>ct", "<cmd>ChatGPTRun add_tests<CR>", { desc = "ChatGPT Add Test Code" })
  end,
}
