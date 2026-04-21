vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set mouse=")

vim.cmd("set number relativenumber")

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 6

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.keymap.set("n", "<leader>br", ":%s/\\r//g<CR>", {})

local modes = {"n", "i", "v"}

for _, mode in ipairs(modes) do
	vim.keymap.set(mode, "<Up>", function() vim.cmd("echo 'Arrow ↑ disabled'") end, { silent = true })
	vim.keymap.set(mode, "<Down>", function() vim.cmd("echo 'Arrow ↓ disabled'") end, { silent = true })
	vim.keymap.set(mode, "<Left>", function() vim.cmd("echo 'Arrow ← disabled'") end, { silent = true })
	vim.keymap.set(mode, "<Right>", function() vim.cmd("echo 'Arrow → disabled'") end, { silent = true })
end
