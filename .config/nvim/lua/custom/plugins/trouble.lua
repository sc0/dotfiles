return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>ts",
      "<cmd>Trouble symbols toggle<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>tr",
      "<cmd>Trouble lsp_references toggle<cr>",
      desc = "References (Trouble)",
    },
  },
  config = function()
    require("trouble").setup({
      win = {
        type = "split",
        position = "right",
        size = 0.35,
      },
      focus = true,
      modes = {
        diagnostics = {
          preview = {
            type = "split",
            relative = "win",
            position = "bottom",
            size = 0.35,
          }
        },
        telescope = {
          preview = {
            type = "split",
            relative = "win",
            position = "bottom",
            size = 0.35,
          }
        }
      }
    })

    vim.keymap.set("n", "[t", function()
      require("trouble").next({skip_groups=true, jump = true})
    end)

    vim.keymap.set("n", "]t", function()
      require("trouble").prev({skip_groups=true, jump = true})
    end)
  end
}
