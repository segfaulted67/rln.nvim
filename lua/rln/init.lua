local M = {}

function M.toggle()
  local is_rln = vim.opt.relativenumber:get()
  vim.opt.relativenumber = not is_rln
end

vim.keymap.set({ 'n', 'v' }, '<leader>rn', function()
  require('rln').toggle()
end, { desc = "Toggle relative number" })

return M
