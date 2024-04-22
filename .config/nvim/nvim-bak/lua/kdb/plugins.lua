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
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{ "mbbill/undotree" },

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
	{ "nvim-tree/nvim-web-devicons" },
	{ "mattn/emmet-vim" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-commentary" },
	{ "Konfekt/FastFold" },
	{ "nvim-lualine/lualine.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "anuvyklack/pretty-fold.nvim" },
	{ "folke/trouble.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "ahmedkhalf/project.nvim" },
	{ "sindrets/diffview.nvim" },
	{ "chentoast/marks.nvim" },
	{ "monkoose/matchparen.nvim" },
	{ "stevearc/oil.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
	},
	{ "lifepillar/pgsql.vim" },
	{ "tmux-plugins/vim-tmux-focus-events" },
	{ "tpope/vim-repeat" },
	{
		"folke/flash.nvim",
		opts = {
			modes = {
				char = {
					jump_labels = true,
				},
			},
			label = {
				rainbow = {
					enabled = true,
				},
			},
		},
	},
	{ "ThePrimeagen/harpoon", branch = "harpoon2" },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "tanvirtin/vgit.nvim" },
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
	},
	{ "sc0/telescope-cmdline.nvim", branch = "fuzzy-search" },
	{ "mfussenegger/nvim-dap" },
	{ "mfussenegger/nvim-dap-python" },
	{ "fatih/vim-go" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "glench/vim-jinja2-syntax" },
	{ "Exafunction/codeium.vim" },
	{
		"jackMort/ChatGPT.nvim",
		event = "VeryLazy",
		config = function()
			require("chatgpt").setup({
				edit_with_instructions = {
					keymaps = {
						toggle_help = "<C-j>",
						use_output_as_input = "<C-f>",
					},
				},
				chat = {
					keymaps = {
						toggle_help = "<C-j>",
					},
				},
			})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"folke/trouble.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{ "imsnif/kdl.vim" },
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	{
		"nvim-neorg/neorg",
		dependencies = { "luarocks.nvim" },
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		version = "*", -- Pin Neorg to the latest stable release
		config = function()
			vim.g.maplocalleader = ","
			require("neorg").setup({
				load = {
					["core.keybinds"] = {
						config = {
							hook = function(keybinds)
								keybinds.remap_key("norg", "n", "<C-Space>", "<Space><Space>")
							end,
						},
					},
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/notes",
							},
							default_workspace = "notes",
						},
					},
				},
			})
		end,
	},
	{ "shortcuts/no-neck-pain.nvim", version = "*" },
})
