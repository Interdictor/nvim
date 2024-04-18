-- local function get_git_branch()
--     local branch = fugitive.git_branch()
--     return branch ~= '' and '  ' .. branch or ''
-- end

local fn = vim.fn
local branch_name = fn.FugitiveHead() or ''
vim.opt.statusline = "%f " .. "[" .. branch_name .. "] [%{&filetype}] %m%=(%l,%c) "

