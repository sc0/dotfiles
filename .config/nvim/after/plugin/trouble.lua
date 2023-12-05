vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gr", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "]t", function()
  require("trouble").next({skip_groups=true, jump = true})
end)

vim.keymap.set("n", "[t", function()
  require("trouble").previous({skip_groups=true, jump = true})
end)
