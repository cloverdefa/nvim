return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.shfmt,
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.completion.spell,
        null_ls.builtins.diagnostics.ansiblelint,
        null_ls.builtins.diagnostics.hadolint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.yamllint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
