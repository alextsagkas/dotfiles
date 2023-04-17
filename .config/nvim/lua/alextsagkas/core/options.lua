-- node path
vim.cmd([[let g:coc_node_path = '/usr/local/n/versions/node/18.9.0/bin/node']])

-- remove automatic commenting
vim.cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])

-- remove whitespace on save
vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])

-- for conciseness
local opt = vim.opt

-- cursor line
vim.api.nvim_command("set cursorline")
vim.cmd("highlight Cursorline guibg='#1a1e24'")
vim.cmd("autocmd InsertEnter * highlight Cursorline guibg=NONE")
vim.cmd("autocmd InsertLeave * highlight Cursorline guibg='#1a1e24'")

-- cursor
opt.guicursor = "i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150"

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.expandtab = true --ident uses spaces instead of tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
-- opt.wrap = true
opt.wrapmargin = 3
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.list = false

-- undotree have access to long history
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- scroll behavior
-- opt.scrolloff = 15
opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- update time
opt.updatetime = 50

-- fold text
vim.cmd([[set foldmethod=manual]])
vim.cmd([[set foldmethod=indent]])
vim.cmd([[set foldlevel=99]])
