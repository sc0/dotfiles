vim.keymap.set(
  "n",
  "<leader>cc",
  "<cmd>CodeCompanionChat<CR>",
  { noremap = true, silent = true, desc = "Toggle [C]odeCompanion [C]hat" }
)

vim.keymap.set(
  "n",
  "<leader>ce",
  "<cmd>CodeCompanion<CR>",
  { noremap = true, silent = true, desc = "Run [C]odeCompanion inline [e]dit" }
)

vim.keymap.set(
  "v",
  "<leader>c?",
  "<cmd>CodeCompanion /explain<CR>",
  { noremap = true, silent = true, desc = "[C]odeCompanion explain code" }
)

vim.keymap.set(
  "v",
  "<leader>cf",
  "<cmd>CodeCompanion /fix<CR>",
  { noremap = true, silent = true, desc = "[C]odeCompanion [f]ix code" }
)

vim.keymap.set(
  "v",
  "<leader>ce",
  "<cmd>CodeCompanion<CR>",
  { noremap = true, silent = true, desc = "Run [C]odeCompanion inline [e]dit" }
)

vim.keymap.set(
  { "n", "v" },
  "<leader><leader>",
  "<cmd>CodeCompanionActions<CR>",
  { noremap = true, silent = true, desc = "Toggle Code [C]ompanion [A]ctions" }
)
