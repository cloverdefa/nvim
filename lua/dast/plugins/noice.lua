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
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    })
    vim.keymap.set("n", "<leader>nc", function()
      require("noice").cmd("dismiss")
    end, { desc = "Dismiss Noice notifications" })
    vim.keymap.set("n", "<leader>nl", function()
      require("noice").cmd("history")
    end, { desc = "shows the message history" })
    vim.keymap.set("n", "<leader>nt", function()
      require("noice").cmd("telescope")
    end, { desc = "telescope search message history" })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "hrsh7th/nvim-cmp",
  },
}
