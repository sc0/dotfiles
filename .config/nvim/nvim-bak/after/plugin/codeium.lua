vim.g.codeium_disable_bindings = 1

vim.keymap.set("i", "<C-f>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })

vim.keymap.set("n", "<leader>co", "<cmd>Codeium Toggle<cr>")

vim.keymap.set("i", "<M-[>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })

vim.keymap.set("i", "<M-]>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
