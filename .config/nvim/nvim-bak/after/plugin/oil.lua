local oil = require("oil")

local nvim_width = vim.api.nvim_list_uis()[1].width
local nvim_height = vim.api.nvim_list_uis()[1].height

oil.setup({
	float = {
		border = "rounded",
		relative = "editor",
		max_width = math.floor(nvim_width / 2),
		max_height = math.floor(nvim_height / 2),
		win_options = {
			winblend = 0,
		},
	},
})

vim.keymap.set("n", "-", oil.open_float, { desc = "Open parent directory" })
