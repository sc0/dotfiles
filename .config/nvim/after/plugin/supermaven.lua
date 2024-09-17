local api = require("supermaven-nvim.api")

vim.keymap.set("n", "<leader>st", function()
  api.toggle()
end)
