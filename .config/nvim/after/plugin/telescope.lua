local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-o>", builtin.git_files, {})
vim.keymap.set("n", "<leader><C-o>", builtin.find_files, {})
vim.keymap.set("n", "<C-t>", builtin.buffers, {})
vim.keymap.set("n", "<leader>f", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
