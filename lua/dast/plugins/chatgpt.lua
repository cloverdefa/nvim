return {
  "jackMort/ChatGPT.nvim",
  -- enabled = false,
  config = function()
    local home = vim.fn.expand("$HOME")

    local config = {
      api_key_cmd = "gpg --decrypt " .. home .. "/openai.gpg",
    }

    require("chatgpt").setup(config)
  end,
  keys = {
    { "<Leader>cc", "<cmd>ChatGPT<CR>", desc = "Open ChatGPT" },
    { "<Leader>cm", "<cmd>ChatGPTCompleteCode<CR>", desc = "ChatGPT AutoComplete Code" },
    { "<Leader>ct", "<cmd>ChatGPTRun add_tests<CR>", desc = "ChatGPT Add Test Code" },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
