-- Fix common typos
vim.keymap.set("i", "jk", "<ESC>")

vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev W1 w!
    cnoreabbrev w1 w!
    cnoreabbrev Q! q!
    cnoreabbrev Q1 q!
    cnoreabbrev q1 q!
    cnoreabbrev Qa! qa!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wa wa
    cnoreabbrev Wq wq
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev wq1 wq!
    cnoreabbrev Wq1 wq!
    cnoreabbrev wQ1 wq!
    cnoreabbrev WQ1 wq!
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qa qa
    cnoreabbrev Qall qall
]])

-- moving selected lines with JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor stays in place for J
vim.keymap.set("n", "J", "mzJ`z")

-- keep the cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- leader p to prevent copying replaced word
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- Copying with leader y and d into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- replace selected word with typed text
vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI|''<Left><Left><Left><Left><Left><Left>]]
)
vim.keymap.set(
  "v",
  "<leader>s",
  [[y:%s/<C-r>"/<C-r>"/gI|''<Left><Left><Left><Left><Left><Left>]]
)
vim.keymap.set(
  "n",
  "<leader><S-s>",
  [[:%s/\<<C-r><C-w>\>//gI|''<Left><Left><Left><Left><Left><Left>]]
)
vim.keymap.set(
  "v",
  "<leader><S-s>",
  [[y:%s/<C-r>"//gI|''<Left><Left><Left><Left><Left><Left>]]
)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set(
  "n",
  "<leader>vt",
  "<cmd>lua vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })<CR>"
)
vim.keymap.set(
  "n",
  "<leader>i",
  "ea<cmd>lua (function() require'cmp'.complete(); require'cmp'.select_next_item(); end)()<CR>"
)
vim.keymap.set("n", "<leader>n", "<cmd>nohl<cr>")

vim.keymap.set("n", "<C-i>", "<C-a>")

vim.keymap.set("n", "<leader>:", [[magg=G`azz]])

vim.keymap.set("n", "<leader>rn", function()
  vim.ui.input({ prompt = "Rename to: " }, function(input)
    vim.lsp.buf.rename(input)
  end)
end)


vim.keymap.set("n", "<leader>lr", [[:LspRestart<CR>]])

vim.keymap.set("n", "<leader>dfo", [[:DiffviewOpen<CR>]])
vim.keymap.set("n", "<leader>dfc", [[:DiffviewClose<CR>]])
vim.keymap.set("n", "<leader>dfh", [[:DiffviewFileHistory<CR>]])
vim.keymap.set("v", "<leader>dfh", [[:DiffviewFileHistory<CR>]])
