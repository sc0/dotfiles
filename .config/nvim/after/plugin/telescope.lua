local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-o>", builtin.git_files, {})
vim.keymap.set("n", "<leader>o", builtin.find_files, {})
vim.keymap.set("n", "<leader>e", function()
	builtin.buffers({ sort_lastused = true, ignore_current_buffer = true, sort_mru = true })
end)
vim.keymap.set("n", "<leader>j", builtin.jumplist, {})
vim.keymap.set("n", "<leader>a", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>wa", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>ff", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>r", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>d", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope cmdline<cr>", {})

require("telescope").load_extension("projects")
require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
				["<c-t>"] = require("trouble.sources.telescope").open,
			},
			i = {
				["<c-d>"] = require("telescope.actions").delete_buffer,
				["<c-t>"] = require("trouble.sources.telescope").open,
			},
		},
	},
	extensions = {
		cmdline = {
			picker = {
				layout_config = {
					width = 0.8,
					height = 0.9,
					prompt_position = "bottom",
					preview_cutoff = 40,
				},
			},
			mappings = {
				complete = "<Tab>",
				run_selection = "<CR>",
				run_input = "<S-CR>",
			},
		},
	},
})

require("telescope").load_extension("cmdline")
