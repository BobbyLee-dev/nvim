-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Save file with Cmd+S
vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<cmd>w<cr>", { desc = "Save file" })

-- Open in phpstorm - leader op
vim.keymap.set("n", "<leader>op", function()
  local filepath = vim.fn.expand("%:p")
  local line = vim.fn.line(".")
  local cmd = string.format("phpstorm --line %d '%s'", line, filepath)
  vim.fn.jobstart(cmd, { detach = true })
end, { desc = "Open current file in PhpStorm at line" })
--
-- Open in Cursor - leader oc
vim.keymap.set("n", "<leader>oc", function()
  local current_file = vim.fn.expand("%:p") -- Get the full path of the current file
  local current_line = vim.fn.line(".") -- Get the current line number
  vim.fn.system("cursor -g " .. vim.fn.shellescape(current_file) .. ":" .. current_line) -- Execute the Cursor command
end, { desc = "Open current file in Cursor IDE at current line" })