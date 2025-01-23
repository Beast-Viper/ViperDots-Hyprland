require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = false
o.number = true
o.autoindent = true

-- turn on termgiucolors for colorschemes to work
-- ( use any terminal which has truecolor support)
o.termguicolors = true
o.background = "dark" -- selects dark variant of applicable themes
o.signcolumn = "yes" -- show sign column so that text doesn"t shift

-- backspace
o.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
