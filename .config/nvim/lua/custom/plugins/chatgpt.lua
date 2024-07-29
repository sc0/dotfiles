return {
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

    vim.keymap.set("v", "<leader>gg", "<cmd>ChatGPTRun grammar_correction<cr>")
    vim.keymap.set("v", "<leader>ge", "<cmd>ChatGPTRun explain_code<cr>")
    vim.keymap.set("v", "<leader>gf", "<cmd>ChatGPTRun fix_bugs<cr>")
    vim.keymap.set("v", "<leader>gd", "<cmd>ChatGPTRun docstring<cr>")
    vim.keymap.set("v", "<leader>go", "<cmd>ChatGPTEditWithInstructions<cr>")
    vim.keymap.set("n", "<leader>gc", "<cmd>ChatGPT<cr>")
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
