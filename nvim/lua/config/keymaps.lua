vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- General
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equal split size" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close split" })

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous tab" })

-- Buffers
keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

-- Git (requires gitsigns.nvim)
keymap.set("n", "<leader>gB", "<cmd>Gitsigns blame_line<CR>", { desc = "Blame line" })
keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Stage hunk" })

-- LSP
keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP Rename" })
keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to References" })
keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
keymap.set("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end, { desc = "LSP Format" })

-- Disable Neovim’s right-click behavior
keymap.set("", "<RightMouse>", "<Nop>")
keymap.set("i", "<RightMouse>", "<Nop>")
keymap.set("v", "<RightMouse>", "<Nop>")
keymap.set("n", "<RightMouse>", "<Nop>")

vim.keymap.set("n", "<leader><Tab>[", ":tabprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Tab>]", ":tabnext<CR>", { noremap = true, silent = true })

