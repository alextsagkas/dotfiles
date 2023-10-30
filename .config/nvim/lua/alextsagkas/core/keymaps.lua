-- for keymaps
vim.g.mapleader = " "

-- jump to spaceholer
-- vim.cmd([[inoremap <Space><Space> <Esc>/<++><Enter>"_c4l<Esc>:nohl<Enter>i]])

-- for conciseness
local keymap = vim.keymap

-- move out of files
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted text around
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete highlight from searched words
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- make seperate lines to a new by keeping cursor in the front
keymap.set("n", "J", "mzJ`z")

-- move up and down to the page
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- next and previous highlighted word stays in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- paste onto highlighted word and go to the end of the phrase without loosing the preserved word
keymap.set("x", "<leader>p", [["_dP]])

-- copy text to the systems clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- increment & decrement
keymap.set("n", "<leader>=", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window Management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- buffer management
keymap.set("n", "<leader>bx", ":Bdelete<CR>") -- close current buffer
keymap.set("n", "<leader>bn", ":bnext<CR>") --  go to next buffer
keymap.set("n", "<leader>bp", ":bprev<CR>") --  go to previous buffer
-- go to specific buffer
vim.cmd([[nnoremap <silent><leader>1 <cmd>lua require("bufferline").go_to_buffer(1, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>2 <cmd>lua require("bufferline").go_to_buffer(2, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>3 <cmd>lua require("bufferline").go_to_buffer(3, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>4 <cmd>lua require("bufferline").go_to_buffer(4, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>5 <cmd>lua require("bufferline").go_to_buffer(5, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>6 <cmd>lua require("bufferline").go_to_buffer(6, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>7 <cmd>lua require("bufferline").go_to_buffer(7, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>8 <cmd>lua require("bufferline").go_to_buffer(8, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>9 <cmd>lua require("bufferline").go_to_buffer(9, true)<cr>]])
vim.cmd([[nnoremap <silent><leader>$ <cmd>lua require("bufferline").go_to_buffer(-1, true)<cr>]])

-- delete to void register
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- diasble quit mode
keymap.set("n", "Q", "<nop>")

-- replace the word that you are on
keymap.set("n", "<leader>w", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make an executable bash script
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- spell check
keymap.set("n", "<leader>sc", ":setlocal spell! spelllang=en_us<CR>")
keymap.set("n", "<leader>SC", ":setlocal spell! spelllang=gr<CR>")

-- formatting
vim.cmd([[nnoremap gp :silent %!prettier --stdin-filepath %<CR>]])

-- remove cursorline
keymap.set("n", "<leader>cl", ":set cursorline!<CR>")

-- run a c file
keymap.set("n", "<leader>rnc", ":!gcc % -o %< && %< <CR>")

-- run a c file
keymap.set("n", "<leader>rcp", ":!gcc % -o %< && %< <CR>")

-- fold text
vim.cmd([[nnoremap <leader><leader> za]])
