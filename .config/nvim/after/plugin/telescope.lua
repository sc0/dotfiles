local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-o>", builtin.git_files, {})
vim.keymap.set("n", "<leader><C-o>", builtin.find_files, {})
vim.keymap.set("n", "<C-t>", builtin.buffers, {})
vim.keymap.set("n", "<leader>e", builtin.jumplist, {})
vim.keymap.set("n", "<leader>f", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').load_extension('projects')
require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
			},
			i = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
			},
		},
	},
})
