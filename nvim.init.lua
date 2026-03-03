vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Number the lines
vim.opt.number = true

vim.opt.wrap = true
vim.opt.linebreak = true

-- slightly better visual for whitespace
vim.opt.list = true
vim.opt.listchars = { tab = ' »', trail = '·' }

-- auto close parens
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')

-- combine vim and MacOS clipboards
vim.opt.clipboard = 'unnamedplus'

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'clear search highlights when pressing the ESCAPE key' });

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})


vim.o.termguicolors = true
local function macos_is_dark()
  local result = vim.system(
    { "defaults", "read", "-g", "AppleInterfaceStyle" },
    { text = true }
  ):wait()

  return result.code == 0 and result.stdout:match("Dark")
end

if macos_is_dark() then
  vim.cmd.colorscheme("desert")
else
  vim.cmd.colorscheme("morning")
end

-- Match unbuffered space at the end of a file to the normal theme background
vim.api.nvim_set_hl(0, "EndOfBuffer", { link = "Normal" })

-- Wrap and highlight lines in git commit messages
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.opt_local.textwidth = 72
    vim.opt_local.formatoptions:append("t")
  end,
})

vim.api.nvim_set_hl(0, "GitCommitOverflow", {
  bg = "#aa0000",  -- red background
})

-- for the first line we want it to be less than 50 chars
vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    vim.fn.matchaddpos("GitCommitOverflow", { {1, 51} })
  end,
})
