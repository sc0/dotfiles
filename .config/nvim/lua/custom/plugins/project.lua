return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			detection_methods = { "lsp", "pattern" },
			ignore_lsp = { "html" }, -- For some reason html causes a chdir to home dir
			show_hidden = true,
			silent_chdir = true,
		})
	end,
}
