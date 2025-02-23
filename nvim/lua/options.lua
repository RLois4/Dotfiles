require "nvchad.options"

-- add yours here!

-- setting mapleader
vim.g.mapleader = ','

vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.background = 'dark'
-- vim.opt.cursorcolumn = true
-- vim.opt.cursorlineopt = "both"
vim.opt.number = true
vim.opt.expandtab = false
vim.opt.compatible = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.encoding = 'utf-8'
vim.opt.updatetime = 500
vim.opt.hidden = true
vim.opt.colorcolumn = "80,100"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.scrolloff = 10
vim.opt.autoread = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.showcmd = true
vim.opt.cmdheight = 2
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.history = 1000
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'
vim.opt.wildignore = '*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'
vim.opt.mouse = 'a'

vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'NONE' })

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
