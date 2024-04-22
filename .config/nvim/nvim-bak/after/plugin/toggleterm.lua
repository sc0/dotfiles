require("toggleterm").setup({
	open_mapping = [[<c-\>]],
	shade_terminals = true,
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
