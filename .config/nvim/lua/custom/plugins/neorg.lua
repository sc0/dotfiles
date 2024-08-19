return {
  {
    "nvim-neorg/neorg",
    dependencies = {
      "luarocks.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-cmp",
      "nvim-lua/plenary.nvim",
    },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    cmd = "Neorg",
    config = function()
      require("neorg").setup({
        load = {
          ["core.keybinds"] = {
            config = {
              hook = function(keybinds)
                keybinds.remap_key("norg", "n", "<C-Space>", "<Space><Space>")
              end,
            },
          },
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.completion"] = {
            config = { engine = "nvim-cmp", name = "[Norg]" },
          },
          ["core.integrations.nvim-cmp"] = {},
          ["core.concealer"] = { config = { icon_preset = "diamond" } }, -- Adds pretty icons to your documents
          ["core.dirman"] = {
            config = {
              workspaces = {
                personal = "~/notes/personal",
                worknotes = "~/notes/worknotes",
                side_projects = "~/notes/side_projects",
              },
              default_workspace = "personal",
            },
          },
        },
      })
    end,
  },
}
