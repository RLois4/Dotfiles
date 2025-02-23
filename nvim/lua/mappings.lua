require "nvchad.mappings"

-- add yours here

require "nvchad.mappings"

-- copy line
vim.api.nvim_set_keymap('n', 'yy', 'yy', { noremap = true, silent = true })

-- inoremap jj <esc>
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- hide search highlights
vim.keymap.set('n', '<leader>0', ':nohlsearch<CR>', { noremap = true, silent = true })

-- cancel command mode
vim.keymap.set('c', 'jj', '<C-c>', { noremap = true, silent = true })
vim.keymap.set('c', 'JJ', '<C-c>', { noremap = true, silent = true })

-- shortcut for :wq
vim.keymap.set('c', 'wq', 'wq<CR>', { noremap = true, silent = true })

-- new lines
vim.keymap.set('n', 'oo', 'o', { noremap = true, silent = true })
vim.keymap.set('n', 'oi', 'O<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', 'op', 'o<Esc>', { noremap = true, silent = true })

-- search centralization
vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })

-- split
vim.keymap.set('n', '<leader>-', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })

-- shortcut for :
vim.keymap.set('n', '<space>', ':', { noremap = true, silent = true })

-- undo and redo
vim.keymap.set('n', '<C-z>', 'u', { noremap = true, silent = true })
vim.keymap.set('n', '<C-y>', '<C-r>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-z>', '<esc>u a', { noremap = true, silent = true })
vim.keymap.set('i', '<C-y>', '<esc><C-r> a', { noremap = true, silent = true })

-- save
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
vim.keymap.set('n', '<C-s', '<Esc>:w<CR>', { noremap = true, silent = true })

-- split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- telescope
vim.keymap.set('n', '<C-x>', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-x>', '<esc>:Telescope find_files<CR>', { noremap = true, silent = true })

-- nerdtree
vim.api.nvim_set_keymap('n', '<C-\\>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-\\>', '<esc>:NERDTreeToggle<CR>', { noremap = true, silent = true })

-- create a tab
vim.keymap.set('n', 'te', ':tabe<CR>', { noremap = true, silent = true })

-- create a new buffer
vim.api.nvim_set_keymap('n', '<leader>n', ':enew<CR>', { noremap = true, silent = true })


-- home and end shortcut
vim.keymap.set('n', '<leader>h', '0', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '$', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-H>', '0', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-L>', '$', { noremap = true, silent = true })
vim.keymap.set('i', '<C-S-H>', '<Home>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-S-L>', '<End>', { noremap = true, silent = true })

-- navigate between buffers
vim.keymap.set('n', 'ty', ':bn<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'tr', ':bp<CR>', { noremap = true, silent = true })

-- delete a buffer
vim.keymap.set('n', 'td', ':bd<CR>', { noremap = true, silent = true })

-- Key mappings to switch between tabs
vim.api.nvim_set_keymap('n', 'y', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'r', ':tabprev<CR>', { noremap = true, silent = true })

-- create splits
vim.keymap.set('n', 'th', ':split<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'tv', ':vsplit<CR>', { noremap = true, silent = true })

-- close splits and others
vim.keymap.set('n', 'tt', ':q<CR>', { noremap = true, silent = true })

-- call command shortcut
vim.keymap.set('n', 'tc', ':!', { noremap = true, silent = true })

-- Simplified mappings using vim.keymap.set
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
vim.keymap.set("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local map = vim.keymap.set
 
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
