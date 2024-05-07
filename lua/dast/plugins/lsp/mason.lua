return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "bashls",
        "lua_ls",
        "pyright",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",   -- Prettier is an opinionated code formatter.
        "black",      -- Black, the uncompromising Python code formatter.
        "shellcheck", --  ShellCheck, a static analysis tool for shell scripts.
        "pylint",     -- Pylint is a static code analyser for Python 2 or 3.
        "stylua",     -- An opinionated Lua code formatter.
        "isort",      -- isort is a Python utility / library to sort imports alphabetically.
        "shfmt",      -- A shell formatter (sh/bash/mksh).
      },
    })
  end,
}
