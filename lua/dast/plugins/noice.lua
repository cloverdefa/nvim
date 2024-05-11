return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
    routes = {
      {
        filter = { event = "notify", find = "No Information available" },
        opts = { skip = true },
      },
    },
    presets = {
      lsp_doc_border = true,
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  -- Dismiss Noice Message
  vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" }),
}
