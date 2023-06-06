-- Functional wrapper for mapping custom keybindings
local keymap = vim.keymap.set
local opts = {noremap = true, silent = true}

keymap("n", "<leader>p", "o<esc>p<CR>", opts) -- Paste in new line
keymap("v", "<leader>p", '"_dP', opts) -- Paste without yanking
keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts) -- Show error modal
keymap("n", "<leader>o", "<cmd>lua require'otter'.activate({'sql'})<CR>", opts) -- Activate otter
