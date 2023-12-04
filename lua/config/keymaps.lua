-- Setting leader key
vim.g.mapleader = " "

local keymap = vim.keymap -- for simplicity

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- To clear search highlights
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

keymap.set("v", "j", "gj")
keymap.set("v", "k", "gk")

keymap.set("n", "x", "x")
-- keymap.set("n", "x", "_x") -- Does not copy letter to register when deleting

keymap.set("n", "<leader>+", "<C-a>") -- Increment number under cursor
keymap.set("n", "<leader>-", "<C-x>") -- Decrement number under cursor

-- netrw
keymap.set("n", "<leader>ne", ":Ex<CR>") -- Open regular netrw
keymap.set("n", "<leader>nv", ":Vex<CR>") -- Opens vertical split netrw
keymap.set("n", "<leader>nh", ":Sex<CR>") -- Opens horizontal split netrw

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>bx", ":BufferClose<CR>") -- close current tab
-- keymap.set("n", "<Tab>", ":BufferNext<CR>") --  go to next tab
-- keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>") --  go to previou

-- window cycling
keymap.set("n", "<leader>jl", ":wincmd l<CR>") -- Cycle right
keymap.set("n", "<leader>jh", ":wincmd h<CR>") -- Cycle left
keymap.set("n", "<C-j>", ":wincmd j<CR>") -- Cycle down
keymap.set("n", "<C-k>", ":wincmd k<CR>") -- Cycle up

keymap.set("n", "<C-s>", ":w<CR>")

-- Plugin Keymaps

-- vim-maximizer plugin
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>") -- find git tracked files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
