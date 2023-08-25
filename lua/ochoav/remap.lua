vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>qf", ":lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>cf", ":let @+=expand(\"%\")<CR>")

