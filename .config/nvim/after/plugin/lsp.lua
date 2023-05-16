local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"rust_analyzer",
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>ws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader><leader>", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>rr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("n", "<C-f>", function()
		vim.lsp.buf.format()
	end, opts)
	vim.keymap.set("i", "<C-p>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<CR>"] = cmp.mapping.confirm({ select = true }),
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lsp_signature_help" },
	},
	{ { name = "buffer" } },
	capabilities = capabilities,
})

require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		},
	},
})

lsp.setup()

vim.api.nvim_set_option("updatetime", 300)

vim.diagnostic.config({
	virtual_text = false,
	float = {
		show_header = true,
		focusable = false,
		source = "always",
		scope = "line",
	},
})
