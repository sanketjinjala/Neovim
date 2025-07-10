-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Set global options for wrapping and related behaviors
vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true -- Wrap lines at word boundaries rather than characters
vim.opt.textwidth = 0 -- Disable automatic hard wrapping (useful if you want to wrap visually only)
vim.opt.wrapmargin = 0 -- No wrap margin
vim.opt.list = false

-- Auto-save whenever text is changed or you leave insert mode
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI", "InsertLeave" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable and vim.bo.modified and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! write")
    end
  end,
  desc = "Auto-save on text change or insert leave",
})
