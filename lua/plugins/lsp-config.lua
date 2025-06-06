return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {"williamboman/mason.nvim", version = "^1.0.0"},
      {"williamboman/mason-lspconfig.nvim", version = "^1.0.0"},
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "pyright"},
        automatic_installation = true,
      })

      local lspconfig = require("lspconfig")

      -- Reference for basic setup if i don't like the default
      require("mason-lspconfig").setup_handlers {
        function(server_name)
          lspconfig[server_name].setup {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
          }
        end,
      }

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, { noremap = true, silent = true })
    end,
  }
}
