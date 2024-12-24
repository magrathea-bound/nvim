local o = vim.o
--Comments for my own sanity when I revisit this in a few months
o.termguicolors = true


--Show tabs at the top of page.  
o.showtabline = 4

--Experimenting with not having clipboard linked
--o.clipboard = "unnamedplus"

--Highlights line where cursor is at
o.cursorline = true

--Sets mouse to be usable in (a)ll modes
o.mouse='a'

--Line numbers
o.relativenumber = true
o.number = true

--Case insensitive in / search (If capital letter exists reverts to sensitve
o.smartcase = true

--Window split operations
o.splitbelow = true
o.splitright = true

------Tabbing
--Sets tab to spaces not tab
o.expandtab = true
--Amount to shift using >>
o.shiftwidth = 4
--Show tablines for open tabs
o.tabstop = 4
--Indents... Smartly....
o.smartindent = true

