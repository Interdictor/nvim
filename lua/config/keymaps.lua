-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local json = require("json")
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

local tbuiltin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', tbuiltin.find_files, {})
vim.keymap.set('n', '<leader>fj', tbuiltin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() tbuiltin.grep_string({ search = vim.fn.input('grep >')}) end)
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':noh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':%s#\\($\\n\\s*\\)\\+\\%$##<CR>', { noremap = true })

vim.api.nvim_command('command! -range=% Formatjq <line1>,<line2>!jq .')
vim.api.nvim_create_user_command("Cppath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

local chai_test = "\z
  \"import { expect } from 'chai'\", \z
  \"\", \z
  \"describe('harness', () => {\", \z
  \"  it('works', => {\", \z
  \"    expect(true).toEqual(false)\", \z
  \"  })\", \z
  \"})\""
vim.api.nvim_command('command! Chaitest call append(line("."), [' .. chai_test .. '])')

local ruby_method = "\z
  \"def some_method(arg)\", \z
  \"end\""
vim.api.nvim_command('command! Rubymethod call append(line("."), [' .. ruby_method .. '])')
