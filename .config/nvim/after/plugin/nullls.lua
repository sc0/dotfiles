local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- python
		null_ls.builtins.diagnostics.flake8,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black.with({
      extra_args = {"--line-length", "80"}
    }),

		-- lua
		null_ls.builtins.formatting.stylua,

		-- general
		null_ls.builtins.code_actions.refactoring,
	},
})
