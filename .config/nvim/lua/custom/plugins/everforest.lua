return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      background = "hard",
      transparent_background_level = 0,
      italics = true,
      disable_italic_comments = false,
      sign_column_background = "none",
      ui_contrast = "low",
      dim_inactive_windows = true,
      diagnostic_virtual_text = "coloured",
      diagnostic_text_highlight = true,
      spell_foreground = false,
    })
    require("everforest").load()
  end,
}
