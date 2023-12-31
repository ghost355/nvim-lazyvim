-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>uL", "<cmd>set invrelativenumber<cr>", { desc = "Toggle Relative Numbers" })

map("n", "<leader>o", "<cmd>Neotree focus<cr>", { desc = "Focus NeoTree" })
map("n", "<leader>oo", "<cmd>Neotree toggle<cr>", { desc = "Focus NeoTree" })

map("n", "<leader>.", "<cmd>Neotree buffers focus<cr>", { desc = "Toggle NeoTree buffers" })
map("n", "<leader>..", "<cmd>Neotree buffers toggle<cr>", { desc = "Toggle NeoTree buffers" })

map("n", "<leader>ge", "<cmd>Neotree git_status toggle<cr>", { desc = "Toggle NeoTree Gitstatus" })

vim.api.nvim_create_user_command("LuaSnipEdit", function()
  require("luasnip.loaders").edit_snippet_files()
end, { nargs = "*" })

map("n", "<leader>fs", "<cmd>LuaSnipEdit<cr>", { desc = "Edit Snippet file" })
