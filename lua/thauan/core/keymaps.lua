vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "<leader>sh", "<cmd>split<CR>")
keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>")
keymap.set("n", "<leader>q", "<cmd>close<CR>")

keymap.set("n", "<leader>aa", "ggVG", {noremap = true, silent = true})
keymap.set("n", "<leader>ac", 'ggVG"+y', {noremap = true, silent = true})

keymap.set("n", "<leader>t1", "<cmd>ToggleTerm 1<CR>")
keymap.set("n", "<leader>t2", "<cmd>ToggleTerm 2<CR>")
keymap.set("n", "<leader>t3", "<cmd>ToggleTerm 3<CR>")

vim.keymap.set("n", "<leader>df", function()
  vim.diagnostic.open_float(nil, { focusable = true })
end, { desc = "Diagnostic float (focável)" })
