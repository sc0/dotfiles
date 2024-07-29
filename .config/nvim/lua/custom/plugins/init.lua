-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
			vim.keymap.set("n", "<leader>uf", vim.cmd.UndotreeFocus)
		end,
	},
	{ "mattn/emmet-vim" },
	{ "lifepillar/pgsql.vim" },
	{ "sindrets/diffview.nvim" },
	{ "jonarrien/telescope-cmdline.nvim" },
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	{ "fatih/vim-go" },
}
