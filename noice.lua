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
    })
  end,
  dependencies = {
    -- 如果你懶加載任何插件，確保添加適當的 `module="..."` 條目
    "MunifTanjim/nui.nvim",
    -- 選擇性依賴:
    -- `nvim-notify` 只有在你想使用通知視圖時才需要。
    -- 如果不可用，我們將使用 `mini` 作為後備方案。
    "rcarriga/nvim-notify",
  },
}
