return {
  "folke/noice.nvim",
  event = "VeryLazy",
  config = function()
    local noice = require("noice")
    noice.setup({
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
      lsp = {
        override = {
          -- 覆寫 LSP 的 markdown 處理方式，使其與 Noice 一起工作
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
    })
    vim.keymap.set("n", "<leader>nc", function()
      require("noice").cmd("dismiss")
    end, { desc = "Dismiss Noice notifications" })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
