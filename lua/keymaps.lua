-- map jk to Esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

-- bind leader to space
--vim.api.nvim_set_keymap('n', ' ', '<Leader>', {noremap = true})
vim.g.mapleader = ' '

-- COC keybinds
-- bind leader+fmt to format the current file with whatever formatter is set
vim.api.nvim_set_keymap('n', '<Leader>fmt', ':silent call CocAction("format")<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>df', '<cmd>split | call CocActionAsync("jumpDefinition")<CR>', {})

-- how the fuck do i convert this to lua?
vim.api.nvim_command [[ inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]]

-- telescope maps
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gitc', '<cmd>lua require("telescope.builtin").git_commits()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gitf', '<cmd>lua require("telescope.builtin").git_files()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gwtl', '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>gwtc', '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>', {})


-- toggle nvim tree
vim.api.nvim_set_keymap('n', '<Leader>ntt', '<cmd>lua require("nvim-tree").toggle()<CR>', {})

-- toggle neogit
vim.api.nvim_set_keymap('n', '<Leader>ngt', '<cmd>lua require("neogit").open({kind="split"})<CR>', {})


-- debugger keybinds
vim.api.nvim_set_keymap('n', '<Leader>dapui', '<cmd>lua require("dapui").toggle()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>dd', '<cmd>lua require("dap").continue()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>di', '<cmd>lua require("dap").step_into()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>do', '<cmd>lua require("dap").step_over()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>dO', '<cmd>lua require("dap").step_out()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>dt', '<cmd>lua require("dap").terminate()<CR>', {})


