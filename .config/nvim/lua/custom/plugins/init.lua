-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
      vim.keymap.set("n", "<leader>uf", vim.cmd.UndotreeFocus)
    end,
  },
  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "scss",
      "sass",
      "less",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "xml",
      "xhtml",
      "pug",
      "jade",
    },
  },
  { "lifepillar/pgsql.vim" },
  { "sindrets/diffview.nvim" },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  { "fatih/vim-go" },
  { "LhKipp/nvim-nu", build = "TSInstall nu" },
  -- {
  --   "smjonas/inc-rename.nvim",
  --   config = function()
  --     require("inc_rename").setup({})
  --     vim.keymap.set("n", "<leader>rn", function()
  --       return ":IncRename " .. vim.fn.expand("<cword>")
  --     end, { expr = true, desc = "[R]e[n]ame" })
  --   end,
  -- },
  { "ziglang/zig.vim" },
}
