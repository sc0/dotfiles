local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- python
		null_ls.builtins.diagnostics.flake8,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black.with({
			extra_args = {"--unstable",  "--line-length", "79"},
		}),

		-- go
		null_ls.builtins.diagnostics.golangci_lint,
		null_ls.builtins.formatting.gofumpt,

		-- sql
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
			extra_filetypes = { "pgsql" },
		}),
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
			extra_filetypes = { "pgsql" },
		}),

		-- lua
		null_ls.builtins.formatting.stylua,

		-- jinja
		null_ls.builtins.diagnostics.djlint,

		-- prettier
		null_ls.builtins.formatting.prettier.with({
			extra_filetypes = { "astro", "html", "htmldjango", "svelte", "jinja.html" },
		}),

		-- css
		null_ls.builtins.diagnostics.stylelint,
		null_ls.builtins.formatting.stylelint,

		-- general
		null_ls.builtins.code_actions.refactoring,
	},
})
