require("vgit").setup({
	settings = {
		scene = {
			diff_preference = "split",
		},
	},
})

vim.keymap.set("n", "<leader>gh", "<cmd>VGit buffer_hunk_preview<cr>")
vim.keymap.set("n", "]h", "<cmd>VGit hunk_up<cr>")
vim.keymap.set("n", "[h", "<cmd>VGit hunk_down<cr>")
vim.keymap.set("n", "<leader>gd", "<cmd>VGit buffer_diff_preview<cr>")
vim.keymap.set("n", "<leader>gr", "<cmd>VGit buffer_hunk_reset<cr>")
vim.keymap.set("n", "<leader>gp", "<cmd>VGit project_diff_preview<cr>")
