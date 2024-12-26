
--**KeyMaps**--
local opts = {noremap = true}
local keymap = vim.keymap.set

--A little somethin somethin for dem emacs users
--scratch that not working for some reason and cant be bothered...
keymap("", "<C-g>", "<Esc>")

--**Normal Mode**--
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--**Insert Mode**--
keymap("i", "jj", "<ESC>", opts)local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

--Leader Commands--
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Doc format map leaders
vim.keymap.set("n", "<leader>xp", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>xy", [["+y]])
vim.keymap.set("n", "<leader>xY", [["+Y]])
-- keymap("n", "<Leader>xp", [["+p]], opts)
-- keymap("n", "<Leader>xy", '\"+y', opts)
-- keymap("n", "<Leader>xY", '\"+Y', opts)
-- keymap("v", "<Leader>xy", '\"+y', opts)

keymap("n", "<Leader>xo", "o<ESC>k")
keymap("n", "<Leader>xO", "O<ESC>k")

--Window Commands
keymap("n", "<Leader>wv", ":vsplit<CR>", opts)
keymap("n", "<Leader>ws", ":split<CR>", opts)
keymap("n", "<Leader>wk", ":close<CR>", opts)

--BufferCommands
keymap("n", "<Leader>bn", ":bnext<CR>", opts)
keymap("n", "<Leader>bp", ":bprevious<CR>", opts)
keymap("n", "<Leader>bk", ":bdelete<CR>", opts)

--File Explorer
keymap("n", "<Leader>e", ":Ex<CR>", opts)

--Experimentation on some shpiffy Primeagen commands
--https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua
--Moves lines up or down and auto indents
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

--keeps cursor still with J
keymap("n", "J", "mzJ`z")

--Keeps cursor in middle with search
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

--Search for current word 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

