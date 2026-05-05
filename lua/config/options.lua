_G.git_branch = function()
  local branch = vim.fn.system('git branch --show-current 2>/dev/null'):gsub('\n', '')
  return branch ~= '' and '[' .. branch .. '] ' or ''
end

vim.opt.statusline = "%f %{v:lua.git_branch()}%m%=(%l,%c)"

vim.opt.number = true
vim.opt.colorcolumn = '100'
vim.opt.wrap = false
local has_clipboard = vim.fn.executable('xclip') == 1
  or vim.fn.executable('xsel') == 1
  or vim.fn.executable('wl-copy') == 1
  or vim.fn.has('mac') == 1

if has_clipboard then
  vim.opt.clipboard = 'unnamedplus'
else
  vim.notify('No clipboard provider found. Install xclip or xsel.', vim.log.levels.WARN)
end
