local lspconfig = require('lspconfig')
--
-- lspconfig.lua_ls.setup {
--   settings = {
--     Lua = {
--       diagnostics = { globals = { 'vim' } }
--     }
--   }
-- }
--
lspconfig.tsserver.setup {}

-- local python_root_files = {
--   'pyproject.toml',
--   'setup.py',
--   'setup.cfg',
--   'requirements.txt',
--   'Pipfile',
--   'pyrightconfig.json',
-- }
--
-- lspconfig.pyright.setup {
--   default_config = {
--     root_dir = function(fname)
--       return lspconfig.util.root_pattern(table.unpack(python_root_files))(fname)
--     end
--   }
-- }
