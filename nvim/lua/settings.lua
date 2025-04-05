-- lua/settings.lua

-- Basic options using vim.opt
vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = {"longest", "list"}
vim.opt.colorcolumn = "80"
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.opt.clipboard = "unnamedplus"
vim.cmd("filetype plugin on")
vim.opt.cursorline = true
vim.opt.ttyfast = true
vim.opt.termguicolors = true

-- Global variables
vim.g.NERDTreeDirArrowExpandale = "+"
vim.g.NERDTreeDirArrowCollapsile = "~"
vim.g.airline_powerline_fonts = 1
vim.g.airline_left_sep = ""
vim.g.airline_left_alt_sep = ""
vim.g.airline_right_sep = ""
vim.g.airline_right_alt_sep = ""
vim.g.airline_symbols = vim.g.airline_symbols or {}
vim.g.airline_symbols.branch = ""
vim.g.airline_symbols.readonly = ""
vim.g.airline_symbols.linenr = ""
vim.g.python3_host_prog = '/usr/local/bin/python3'
vim.opt.shell = "/bin/zsh"

-- Colorscheme
vim.g.catppuccin_flavour = "macchiato"
vim.cmd("colorscheme catppuccin")

-- Key mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-f>", ":NERDTreeFocus<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTree<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-l>", ":call CocActionsAsync('JumpDefinition')<CR>", opts)
vim.api.nvim_set_keymap("i", "<Left>", "<C-o>^", opts)
vim.api.nvim_set_keymap("i", "<Right>", "<C-o>$", opts)
vim.api.nvim_set_keymap("i", "<S-Space>", "<Esc>:Commentary<CR>i", opts)
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', opts)
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', opts)
vim.api.nvim_set_keymap("i", "<C-v>", "<C-r>+", opts)
vim.api.nvim_set_keymap("n", "<F8>", ":TagbarToggle<CR>", opts)

-- Special Insert mode mapping for coc
vim.api.nvim_set_keymap("i", "<Tab>", "pumvisible() ? coc#_select_confirm() : '<Tab>'", { expr = true })


-- Enable shift + Arrow keys for selection
vim.api.nvim_set_keymap("n", "<S-Left>", "v<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Right>", "v<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Up>", "v<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Down>", "v<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Left>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Right>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Up>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-Down>", "<Down>", { noremap = true, silent = true })

-- comment toggle
vim.api.nvim_set_keymap("n", "gcc", ":Commentary<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "gc", ":Commentary<CR>", { noremap = true, silent = true })


-- Remove preview from completeopt
vim.cmd("set completeopt-=preview")

