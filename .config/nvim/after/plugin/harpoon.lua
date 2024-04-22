local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>l", function()
	harpoon:list():add()
end)

vim.keymap.set("n", "<leader>p", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-p><C-n>", function()
	harpoon:list():next()
end)

vim.keymap.set("n", "<C-p><C-p>", function()
	harpoon:list():prev()
end)

vim.keymap.set("n", "<C-p><C-q>", function()
	harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-p><C-w>", function()
	harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-p><C-e>", function()
	harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-p><C-r>", function()
	harpoon:list():select(4)
end)
