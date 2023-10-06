local set = vim.opt

-- line numbers
set.number = true
set.relativenumber = true

-- tabs & indentation
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true

-- seach settings
set.ignorecase = true
set.smartcase = true

-- cursor line
set.cursorline = true

-- appearance
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
set.iskeyword:append("_")

-- split windows
set.splitright = true -- split vertical window to the right
set.splitbelow = true -- split horizontal window to the bottom

-- turn off swap file
set.swapfile = false

-- no show status line
set.showmode = false

-- Neorg
set.conceallevel = 2
set.concealcursor = "nc"

-- check speller
set.spelllang = "en_us,es"
set.spell = true

-- change line numbers color
-- a2a9c1
-- cdd6f4
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#a2a9c1" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#a2a9c1" })
