local builtin = require("telescope.builtin")

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Neotree keymap
vim.keymap.set("n", "<leader>nn", ":Neotree<CR>", { noremap = true, silent = true, desc = "Toggle Neotree" })

return {} -- Return an empty table to satisfy the expectation for a table.
