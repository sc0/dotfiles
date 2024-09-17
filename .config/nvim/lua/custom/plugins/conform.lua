return { -- Autoformat
  "stevearc/conform.nvim",
  lazy = false,
  keys = {
    {
      "<leader>;",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = false, -- function(bufnr)
    -- -- Disable "format_on_save lsp_fallback" for languages that don't
    -- -- have a well standardized coding style. You can add additional
    -- -- languages here or re-enable it for the disabled ones.
    -- local disable_filetypes = { c = true, cpp = true }
    -- return {
    -- 	timeout_ms = 500,
    -- 	lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
    -- }
    -- end,
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform can also run multiple formatters sequentially
      python = { "isort", "black" },
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      javascript = { "prettierd", "prettier" },
      svelte = { "prettierd", "prettier" },
      html = { "prettierd", "prettier" },
      htmldjango = { "prettierd", "prettier" },
      markdown = { "prettier" },
    },
    formatters = {
      stylua = {
        prepend_args = {
          "--indent-type",
          "Spaces",
          "--column-width",
          "80",
          "--indent-width",
          "2",
        },
      },
      prettier = {
        prepend_args = {
          "--print-width",
          "80",
          "--tab-width",
          "2",
          "--prose-wrap",
          "always",
        },
      },
    },
  },
}
