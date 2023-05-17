-- install lazy plugin manager if not installed yet
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- installing plugins
require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "mbbill/undotree" },
	{ "tpope/vim-fugitive" },

	-- lsp zero setup
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "mattn/emmet-vim" },
	{ "airblade/vim-gitgutter" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-commentary" },
	{ "Konfekt/FastFold" },
	{ "nvim-lualine/lualine.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "anuvyklack/pretty-fold.nvim" },
  { "folke/trouble.nvim" },
  { "windwp/nvim-autopairs" }
})
