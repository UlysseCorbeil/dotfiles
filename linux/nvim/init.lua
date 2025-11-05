local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Nerd Tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

-- Nord
Plug 'nordtheme/vim'

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd('silent! colorscheme nord')
