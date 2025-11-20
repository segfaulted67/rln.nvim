local M = {}

function M.toggle()
  local is_rln = vim.opt.relativenumber:get()
  vim.opt.relativenumber = not is_rln
  if is_rln then
    print("Disabled Relative Number")
  else
    print("Enabled Relative Number")
  end,
end

vim.keymap.set({ 'n', 'v' }, '<leader>rn', function()
  require('rln').toggle()
end, { desc = "Toggle relative number" })

return M
