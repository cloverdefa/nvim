return {
  "dreamsofcode-io/ChatGPT.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chatgpt").setup({
      async_api_key_cmd = "echo $OPENAI_API_KEY",
    })
  end,
}
