vim.g.mapleader = " "

local keymap = vim.keymap

local function map(mode, shortcut, command)
	keymap.set(mode, shortcut, command, { noremap = true, silent = true })
end

local function noremap(shortcut, command)
	map({ "n", "v" }, shortcut, command)
end

local function nmap(shortcut, command)
	map("n", shortcut, command)
end

-- ISRT layout remap
noremap("n", "h")
noremap("e", "j")
noremap("a", "l")
noremap("u", "k")

noremap("j", "n")
noremap("J", "N")
noremap("l", "a")
noremap("h", "u")
noremap("k", "e")
noremap("K", "E")

-- save
nmap("<leader>s", ":w<CR>")
nmap("<leader>q", ":q<CR>")
nmap("<leader>Q", ":q!<CR>")

-- source
nmap("<leader>%", ":source%<CR>")

-- esc noh
nmap("<ESC>", ":noh<CR>")

-- enter in n mode
nmap("<CR>", "o<Esc>")

-- window focus navigator
nmap("<leader>n", ":wincmd h<CR>")
nmap("<leader>e", ":wincmd j<CR>")
nmap("<leader>a", ":wincmd l<CR>")
nmap("<leader>u", ":wincmd k<CR>")
