require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'rust_analyzer' },
  handlers = {
    -- Default handler for all servers
    function(server_name)
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      require('lspconfig')[server_name].setup({
        capabilities = capabilities,
      })
    end,
  },
})
