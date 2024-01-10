local lsps = {
  "lua_ls",
  "tsserver",
}

return {
  {
    "williamboman/mason.nvim",

    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = lsps,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",

    config = function()
      local lspconfig = require("lspconfig")

      for _,lsp in ipairs(lsps) do
        lspconfig[lsp].setup({})
      end

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        end,
      })
    end,
  },
}
