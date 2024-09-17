return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            runner = "pytest",
          }),
        },
      })
      vim.keymap.set("n", "<leader>nt", function ()
        require("neotest").run.run()
      end, { desc = "Run test" })
      vim.keymap.set("n", "<leader>ns", function ()
        require("neotest").summary.toggle()
      end, { desc = "Toggle tests summary" })
      vim.keymap.set("n", "<leader>no", function ()
        require("neotest").output_panel.toggle()
      end, { desc = "Toggle tests output" })
    end,
  },
}
