-- lua/plugins.lua
-- Use vim.cmd to run the vim-plug commands
vim.cmd([[
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'lifepillar/pgsql.vim'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'preservim/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'feline-nvim/feline.nvim'
Plug 'jackMort/ChatGPT.nvim'  " GPT-based code generation tool
Plug 'tpope/vim-commentary'

set encoding=UTF-8
call plug#end()
]])

-- Plugin configurations in Lua

-- Feline (statusline) setup
require("feline").setup()
