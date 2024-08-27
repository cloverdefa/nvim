return {
  "rmagatti/auto-session",
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },

  keys = {
    { "<leader>wr", "<cmd>SessionSearch<CR>", desc = "Session search" },
    { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
    { "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
  },

  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore = false,
      bypass_save_filetypes = { "alpha", "dashboard" }, -- or whatever dashboard you use
      suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end,

  args_allow_files_auto_save = function()
    local supported = 0

    local buffers = vim.api.nvim_list_bufs()
    for _, buf in ipairs(buffers) do
      -- Check if the buffer is valid and loaded
      if vim.api.nvim_buf_is_valid(buf) and vim.api.nvim_buf_is_loaded(buf) then
        local path = vim.api.nvim_buf_get_name(buf)
        if vim.fn.filereadable(path) ~= 0 then
          supported = supported + 1
        end
      end
    end

    -- If we have more 2 or more supported buffers, save the session
    return supported >= 2
  end,
}
