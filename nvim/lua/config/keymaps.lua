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

-- Move lines up and down
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Mover linea hacia abajo" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Mover linea hacia arriba" })

map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Mover linea hacia abajo" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Mover linea hacia arriba" })

map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Mover linea hacia abajo" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Mover linea hacia arriba" })

-- Solo si el archivo tiene extension .http
vim.api.nvim_create_autocmd("FileType", {
  pattern = "http",
  callback = function()
    map("n", "<leader>rr", "<cmd>Rest run<CR>", { desc = "Run request" })
    map("n", "<leader>rp", "<cmd>Rest run last<CR>", { desc = "Run last request" })

    -- Escoger environment
    map("n", "<leader>re", function()
      local telescope = require("telescope")
      telescope.load_extension("rest")
      telescope.extensions.rest.select_env()
    end, { desc = "Choose environment" })
  end,
})
