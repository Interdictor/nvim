-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
vim.opt.listchars = { tab = '» ', space = '·', trail = '·', nbsp = '␣', eol = '¬' }
vim.opt.list = true
vim.wo.number = true
vim.opt.scrolloff = 10
vim.opt.cursorline = true
-- vim.opt.clipboard = 'unnamedplus'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 5000
vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.wo.signcolumn = 'yes'
vim.opt.lazyredraw = true
vim.opt.ttyfast = true

vim.opt.autowriteall = true
vim.opt.winbar = nil
vim.highlight.priorities.semantic_tokens = 120
