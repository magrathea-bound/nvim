return {
    --Themes
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true},
    {"neanias/everforest-nvim", priority = 1000, config = function()
        require("everforest").setup({}) end}
}
