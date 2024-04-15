return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require("oil")
    oil.setup()
    columns = {
      "icon"
    }
    vim.keymap.set("n", "-", oil.toggle_float, {})
  end,
}
