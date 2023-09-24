vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap

local function map(mode, shortcut, command, desc)
	keymap.set(mode, shortcut, command, { desc = desc, noremap = true, silent = true })
end

local function noremap(shortcut, command, desc)
	map({ "n", "v" }, shortcut, command, desc)
end

local function nmap(shortcut, command, desc)
	map("n", shortcut, command, desc)
end

-- ISRT layout remap
noremap("n", "h")
noremap("e", "j")
noremap("a", "l")
noremap("u", "k")

noremap("k", "n")
noremap("K", "N")
noremap("l", "a")
noremap("L", "A")
noremap("A", "L")
noremap("N", "H")
noremap("h", "u")
noremap("j", "e")
noremap("J", "E")

-- horizontal scroll
nmap("N", "20zh")
nmap("A", "20zl")

-- save
nmap("<leader>s", ":w<CR>", "Save")
nmap("<leader>q", ":q<CR>", "Close")
nmap("<leader>Q", ":q!<CR>", "Force quit")

-- source
nmap("<leader>%", ":source%<CR>", "Load source")

-- esc noh
nmap("<ESC>", ":noh<CR>")

-- enter in n mode
nmap("<CR>", "o<Esc>")

-- window focus navigator
nmap("<leader>n", ":wincmd h<CR>", "Move panel left")
nmap("<leader>e", ":wincmd j<CR>", "Move panel down")
nmap("<leader>a", ":wincmd l<CR>", "Move panel right")
nmap("<leader>u", ":wincmd k<CR>", "Move panel up")

-- Delete all buffers
nmap("<C-c>", ":%bd|edit#|bd#<CR>", "Delete all buffers except current one")
