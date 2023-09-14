local set = vim.opt

-- line numbers
set.number = true
set.relativenumber = true

-- tabs & indentatio
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true

-- line wrapping
set.wrap = false

-- seach settings
set.ignorecase = true
set.smartcase = true

-- cursor line
set.cursorline = true

-- appereance
set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"

-- remove auto comment below
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- backspace
set.backspace = "indent,eol,start"

-- clipboard
set.clipboard:append("unnamedplus")

-- same word
set.iskeyword:append("-")

-- split windows
set.splitright = true -- split vertical window to the right
set.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
set.swapfile = false

-- no show statusline
set.showmode = false
