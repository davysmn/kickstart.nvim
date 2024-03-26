-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Visual Block --
-- Move text up and downfunction insertFullPath()
function insertFullPath()
  local filepath = vim.fn.expand '%'
  vim.fn.setreg('+', filepath) -- write to clippoard
end

vim.keymap.set('n', '<leader>pc', insertFullPath, { noremap = true, silent = true, desc = 'Copy current path' })
vim.api.nvim_set_keymap('n', '<leader>L', '<cmd>LazyGitCurrentFile<CR>', { noremap = true, silent = true, desc = 'Lazygit' })
vim.api.nvim_set_keymap('n', '<leader><leader>', '<cmd>:Neotree filesystem reveal toggle<CR>', { noremap = true, silent = true, desc = 'Show Neotree' })
vim.api.nvim_set_keymap('n', '<leader>cf', '<cmd>EslintFixAll<CR>', { noremap = true, silent = true, desc = 'LSP: [C]ode [f]ix all' })

vim.api.nvim_set_keymap('x', 'J', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
