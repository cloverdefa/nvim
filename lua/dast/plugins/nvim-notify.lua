return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    notify.setup({
      max_slots = 5,
      max_width = 80,
    })
    vim.notify = notify
  end,
}
