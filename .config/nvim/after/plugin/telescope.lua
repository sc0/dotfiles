local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-o>", builtin.git_files, {})
vim.keymap.set("n", "<leader>o", builtin.find_files, {})
vim.keymap.set("n", "<leader>e", function()
	builtin.buffers({ sort_lastused = true, ignore_current_buffer = true, sort_mru = true })
end)
vim.keymap.set("n", "<leader>je", builtin.jumplist, {})
vim.keymap.set("n", "<leader>a", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>wa", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>f", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>r", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>d", builtin.diagnostics, {})

require("telescope").load_extension("projects")
require("telescope").load_extension("harpoon")
require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
				["<c-t>"] = require("trouble.providers.telescope").open_with_trouble,
			},
			i = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
				["<c-t>"] = require("trouble.providers.telescope").open_with_trouble,
			},
		},
	},
})
