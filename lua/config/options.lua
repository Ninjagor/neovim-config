local opt = vim.opt -- For conciseness

-- line numbers
opt.relativenumber = false
opt.number = true

-- Shortcuts for toggling relativenumber and number
vim.keymap.set("n", "<leader>rd", function()
  vim.opt.relativenumber = false
end)
vim.keymap.set("n", "<leader>re", function()
  vim.opt.relativenumber = true
end)
vim.keymap.set("n", "<leader>lt", function()
  if vim.opt.number then
    vim.opt.number = false
  else
    vim.opt.number = true
  end
end)


-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "no"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
