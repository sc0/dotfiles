require("kdb")
require("kdb.remap")
require("kdb.plugins")

vim.api.nvim_set_option("updatetime", 1000)

vim.diagnostic.config({
	virtual_text = true,
	float = {
		show_header = true,
		focusable = false,
		source = "always",
		scope = "line",
	},
})

-- Function to check if a floating dialog exists and if not
-- then check for diagnostics under the cursor
function OpenDiagnosticIfNoFloat()
	for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
		if vim.api.nvim_win_get_config(winid).zindex then
			return
		end
	end
	-- THIS IS FOR BUILTIN LSP
	vim.diagnostic.open_float(0, {
		scope = "cursor",
		focusable = false,
		close_events = {
			"CursorMoved",
			"CursorMovedI",
			"BufHidden",
			"InsertCharPre",
			"WinLeave",
		},
	})
end

-- Show diagnostics under the cursor when holding position
vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold" }, {
	pattern = "*",
	command = "lua OpenDiagnosticIfNoFloat()",
	group = "lsp_diagnostics_hold",
})

vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "BufWinEnter" }, {
	pattern = "*",
	command = "setlocal cursorline",
})

vim.api.nvim_create_autocmd({ "WinLeave" }, {
	pattern = "*",
	command = "setlocal cursorline",
})

-- vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
-- 	pattern = "*",
-- 	nested = true,
-- 	command = "silent! :w",
-- })

vim.filetype.add({ extension = { sql = "pgsql" } })
