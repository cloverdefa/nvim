return {
  "jackMort/ChatGPT.nvim",
  -- enabled = false,
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
  end,
  keys = {
    { "<Leader>cc", "<cmd>ChatGPT<CR>", desc = "Open ChatGPT" },
    { "<Leader>cm", "<cmd>CHatGPTCompleteCode<CR>", desc = "ChatGPT AutoComplete Code" },
    { "<cmd>ChatGPTRun add_tests<CR>", desc = "ChatGPT Add Test Code" },
  },
}
