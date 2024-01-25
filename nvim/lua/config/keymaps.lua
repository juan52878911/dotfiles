-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Float terminal keymaps
map("n", "<leader>tn", ":FloatermNew<CR>", { desc = "Nueva terminal" })
map("n", "<leader>td", ":FloatermKill<CR>", { desc = "Eliminar terminal" })
map("n", "<leader>tt", ":FloatermToggle<CR>", { desc = "Toggle terminal" })

map("n", "<leader>ts", ":FloatermNext<CR>", { desc = "Siguiente terminal" })
map("n", "<leader>tp", ":FloatermPrev<CR>", { desc = "Anterior terminal" })
