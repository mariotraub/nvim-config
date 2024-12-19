vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set mouse=")

vim.cmd("set relativenumber")

vim.keymap.set('v', '<leader>c', ":'<,'>w !perl -pe 'chomp if eof' | clip.exe<CR>", {})
