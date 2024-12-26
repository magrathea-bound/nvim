return{
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
            defaults = {},
            spec = {
                {
                    mode = { "n", "v" },
                    { "<leader>x", group = "File" },
                    { "<leader>w", group = "Window" },
                    { "<leader>b", group = "Buffer" },
                    { "<leader>f", group = "Telescope" },
                    { "<leader>h", group = "Help" },
                    { "[", group = "prev" },
                    { "]", group = "next" },
                    { "g", group = "goto" },
                    { "gs", group = "surround" },
                    { "z", group = "fold" },
                    -- better descriptions
                    { "gx", desc = "Open with system app" },
                },
            },
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    }
}
