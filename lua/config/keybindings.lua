
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

keymap("n", "<C-b>", ":bnext<CR>", opts)
--keymap("n", "<C-B>", ":bprevious<CR>", opts)

--**Insert Mode**--
keymap("i", "jj", "<ESC>", opts)

--Leader Commands--
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Doc format map leaders
keymap("n", "<leader>xp", [["+p]])
keymap({"n", "v"}, "<leader>xy", [["+y]])
keymap("n", "<leader>xY", [["+Y]])

--Add Lines 
keymap("n", "<Leader>xo", "o<ESC>k")
keymap("n", "<Leader>xO", "O<ESC>k")

--Window Commands
keymap("n", "<Leader>wv", ":vsplit<CR>")

keymap("n", "<Leader>wv", ":vsplit<CR>")
keymap("n", "<Leader>ws", ":split<CR>")
keymap("n", "<Leader>wk", ":close<CR>")

--BufferCommands
keymap("n", "<Leader>bn", vim.cmd.bnext)
keymap("n", "<Leader>bp", vim.cmd.bprevious)
keymap("n", "<Leader>bk", vim.cmd.bdelete)

--File Explorer
keymap("n", "<leader>e", vim.cmd.Ex)

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
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

