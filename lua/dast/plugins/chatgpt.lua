return {
  "jackMort/ChatGPT.nvim",
  -- enabled = false,
  config = function()
    local home = vim.fn.expand("$HOME")

    local config = {
      api_key_cmd = "gpg --decrypt " .. home .. "/openai.gpg",
      chat = {
        welcome_message = "歡迎使用ChatGPT",
        loading_text = "讀取中，請稍後 ...",
        question_sign = "", -- 🙂
        answer_sign = "ﮧ", -- 🤖
        border_left_sign = "",
        border_right_sign = "",
        max_line_length = 120,
        sessions_window = {
          active_sign = "  ",
          inactive_sign = "  ",
          current_line_sign = "",
          border = {
            style = "rounded",
            text = {
              top = " Sessions ",
            },
          },
          win_options = {
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
          },
        },
      },
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
