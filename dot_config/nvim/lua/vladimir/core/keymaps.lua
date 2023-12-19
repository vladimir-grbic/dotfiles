-- Note: The plugin-specific keymaps are located in the plugin configuration files.
-- Different modes:
-- n - normal_mode
-- i - insert_mode
-- v - visual_mode
-- x - visual_block_mode
-- t - term_mode
-- c - command_mode

-- Map the leader key to space.
vim.g.mapleader = " "

-- Copy to system clipboard.
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Delete to void register.
vim.keymap.set("n", "<leader>x", "\"_x")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>x", "\"_x")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Search the word the cursor is on.
-- Note:
-- # and * do the same but move the cursor to the previous/next instance.
-- <C-l> clears the highlights.
vim.keymap.set("n", "<leader>s", "*N")
vim.keymap.set("v", "<leader>s", [["hy:let @/=@h<CR>nN]])

-- Replace the word the cursor is on.
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>r", [["hy:%s/<C-r>h/<C-r>h/gI<Left><Left><left>]])

-- Move blocks of text in visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor static while appending the line(s) from below.
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor in the middle of the screen while reading the file.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search term in the middle of the screen while iterating.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Increment/decrement numbers.
vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")
