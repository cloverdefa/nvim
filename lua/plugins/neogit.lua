return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    --"ibhagwan/fzf-lua",              -- optional
  },
  config = function ()
    local group = vim.eapi.nvim_create_augroup('MyCustomNeogitEvents', { clear = true })
      vim.api.nvim_create_autocmd('User', {
        pattern = 'NeogitPushComplete',
        group = group,
        callback = require('neogit').close,
      })
  end,
  }
