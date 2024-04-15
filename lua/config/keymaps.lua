-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

local tbuiltin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', tbuiltin.find_files, {})
vim.keymap.set('n', '<leader>ps', function() tbuiltin.grep_string({ search = vim.fn.input('Grep >')}) end)

vim.api.nvim_command('command! -range=% Formatjq <line1>,<line2>!jq .')
