-- -- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- -- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- local nvim_width = vim.api.nvim_list_uis()[1].width
-- local nvim_height = vim.api.nvim_list_uis()[1].height

-- -- setup with some options
-- require("nvim-tree").setup({
--   sync_root_with_cwd = true,
--   respect_buf_cwd = true,
--   update_focused_file = {
--     enable = true,
--     update_root = true
--   },
-- 	sort_by = "case_sensitive",
-- 	view = {
-- 		float = {
-- 			enable = true,
-- 			open_win_config = {
-- 				relative = "editor",
-- 				border = "rounded",
-- 				width = math.floor(nvim_width / 2),
-- 				col = math.floor(nvim_width / 4),
-- 				row = math.floor(nvim_height / 6),
-- 			},
-- 		},
-- 	},
-- 	renderer = {
-- 		group_empty = true,
-- 	},
-- 	filters = {
-- 		dotfiles = true,
-- 	},
-- })

-- vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeOpen)
