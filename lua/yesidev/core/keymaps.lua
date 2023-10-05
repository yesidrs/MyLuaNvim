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

-- save
nmap("<leader>w", ":w<CR>", "save")
nmap("<leader>q", ":q<CR>", "close")
nmap("<leader>Q", ":q!<CR>", "force quit")

-- source
nmap("<leader>%", ":source%<CR>", "load source")

-- esc noh
nmap("<ESC>", ":noh<CR>")

-- enter in n mode
nmap("<CR>", "o<Esc>")

-- tmux navigator
nmap("<C-h>", "<cmd>tmuxNavigateLeft<CR>", "window left")
nmap("<C-j>", "<cmd>tmuxNavigateDown<CR>", "window down")
nmap("<C-k>", "<cmd>tmuxNavigateUp<CR>", "window up")
nmap("<C-l>", "<cmd>tmuxNavigateRight<CR>", "window right")
