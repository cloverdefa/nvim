return {
  "romgrk/barbar.nvim",
  -- cond = false,
  dependencies = {
    "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
    animation = true,
    auto_hide = false,
    clickable = true,
    focus_on_close = "left",
    hide = { extensions = true, inactive = true },
    highlight_visible = true,
    icons = {
      -- Configure the base icons on the bufferline.
      -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
      buffer_index = false,
      buffer_number = false,
      button = "",
      -- Enables / disables diagnostic symbols
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
        [vim.diagnostic.severity.WARN] = { enabled = false },
        [vim.diagnostic.severity.INFO] = { enabled = false },
        [vim.diagnostic.severity.HINT] = { enabled = true },
      },
      gitsigns = {
        added = { enabled = true, icon = "+" },
        changed = { enabled = true, icon = "~" },
        deleted = { enabled = true, icon = "-" },
      },
    },
    -- version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },
}
