-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  { import = "lazyvim.plugins.extras.lang.json" },
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "gruvbox",
--    },
--  },

--  {
--    "nvim-telescope/telescope.nvim",
--    keys = {
--      -- add a keymap to browse plugin files
--      -- stylua: ignore
--      {
--        "<leader>fp",
--        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
--        desc = "Find Plugin File",
--      },
--    },
    -- change some options
  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
--  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
--  {
--    "nvim-treesitter/nvim-treesitter",
--    opts = {
--      ensure_installed = {
--        "bash",
--        "html",
--        "javascript",
--        "json",
--        "lua",
--        "markdown",
--        "markdown_inline",
--        "python",
--        "query",
--        "regex",
--        "tsx",
--        "typescript",
--        "vim",
--        "yaml",
--      },
--    },
--  },

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
--  {
--    "nvim-treesitter/nvim-treesitter",
--    opts = function(_, opts)
--      -- add tsx and treesitter
--      vim.list_extend(opts.ensure_installed, {
--        "tsx",
--        "typescript",
--      })
--    end,
--  },

  -- the opts function can also be used to change the default opts:

  -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc

  -- add any tools you want to have installed below
