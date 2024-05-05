return {
  "dreamsofcode-io/CHatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("chatgpt").setup({
      async_api_key_cmd = "pass show neovim-openai",
    })
  end,
}
