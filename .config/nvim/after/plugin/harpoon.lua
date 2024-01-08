local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>l", function()
	harpoon:list():append()
end)

vim.keymap.set("n", "<C-n>", function()
	harpoon:list():next()
end)

vim.keymap.set("n", "<C-p>", function()
	harpoon:list():prev()
end)

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<leader>p", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
