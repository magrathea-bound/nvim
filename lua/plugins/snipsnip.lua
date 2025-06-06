return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        build = "make install_jsregexp",

        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            local ls = require("luasnip")

            require("luasnip.loaders.from_vscode").lazy_load()

            vim.keymap.set({"i"}, "<C-s>e", function() ls.expand() end, {silent = true})

            vim.keymap.set({"i", "s"}, "<C-E>", function()
                if ls.choice_active() then
                    ls.change_choice(1)
                end
            end, {silent = true})

             vim.keymap.set({ "i", "s" }, "<C-j>", function()
                  if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                  else
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-j>", true, false, true), "n", true)
                  end
                end, { silent = true, desc = "Jump to next snippet placeholder" })

                vim.keymap.set({ "i", "s" }, "<C-k>", function()
                  if ls.jumpable(-1) then
                    ls.jump(-1)
                  else
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-k>", true, false, true), "n", true)
                  end
                end, { silent = true, desc = "Jump to previous snippet placeholder" })
        end,
    }
}
