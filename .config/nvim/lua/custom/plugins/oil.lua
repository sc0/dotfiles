return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			float = {
				border = "rounded",
				relative = "editor",
				max_width = math.floor(vim.api.nvim_list_uis()[1].width / 2),
				max_height = math.floor(vim.api.nvim_list_uis()[1].height / 2),
				win_options = {
					winblend = 0,
				},
			},
			columns = {
				"icon",
			},
			dependencies = { { "echasnovski/mini.icons", opts = {} } },
		})

		vim.keymap.set("n", "-", require("oil").open_float, { desc = "[oil] Open parent directory" })
	end,
}
