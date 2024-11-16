return {
    "oskarrrrrrr/symbols.nvim",
    config = function()
        local r = require("symbols.recipes")
        require("symbols").setup(r.DefaultFilters, r.AsciiSymbols, {
            -- custom settings here
            -- e.g. hide_cursor = false
        })
        vim.keymap.set("n", ",s", ":Symbols<CR>")
        vim.keymap.set("n", ",S", ":SymbolsClose<CR>")
    end
}
