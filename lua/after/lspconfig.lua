local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' } }
    }
  }
}

-- lspconfig.ruby_lsp.setup {}
