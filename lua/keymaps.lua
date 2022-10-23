-- map jk to Esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})

-- bind leader to space
--vim.api.nvim_set_keymap('n', ' ', '<Leader>', {noremap = true})
vim.g.mapleader = ' '

-- telescope maps
vim.keymap.set('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', {})
vim.keymap.set('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', {})
vim.keymap.set('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', {})
vim.keymap.set('n', '<Leader>fc', '<cmd>lua require("telescope.builtin").commands()<CR>', {})
vim.keymap.set('n', '<Leader>fw', '<cmd>lua require("telescope.builtin").grep_string()<CR>', {})
vim.keymap.set('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', {})
vim.keymap.set('n', '<Leader>gitc', '<cmd>lua require("telescope.builtin").git_commits()<CR>', {})
vim.keymap.set('n', '<Leader>gitf', '<cmd>lua require("telescope.builtin").git_files()<CR>', {})
vim.keymap.set('n', '<Leader>gwtl', '<cmd>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>', {})
vim.keymap.set('n', '<Leader>gwtc', '<cmd>lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>', {})


-- toggle nvim tree
vim.keymap.set('n', '<Leader>ntt', '<cmd>lua require("nvim-tree").toggle()<CR>', {})

-- toggle neogit
vim.keymap.set('n', '<Leader>ngt', '<cmd>lua require("neogit").open({kind="split"})<CR>', {})


-- debugger keybinds
vim.keymap.set('n', '<Leader>dapui', '<cmd>lua require("dapui").toggle()<CR>', {})
vim.keymap.set('n', '<Leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', {})
vim.keymap.set('n', '<Leader>dd', '<cmd>lua require("dap").continue()<CR>', {})
vim.keymap.set('n', '<Leader>di', '<cmd>lua require("dap").step_into()<CR>', {})
vim.keymap.set('n', '<Leader>do', '<cmd>lua require("dap").step_over()<CR>', {})
vim.keymap.set('n', '<Leader>dO', '<cmd>lua require("dap").step_out()<CR>', {})
vim.keymap.set('n', '<Leader>dt', '<cmd>lua require("dap").terminate()<CR>', {})


-- format buffer 
vim.keymap.set("n", "<Leader>fm", '<cmd>FormatWrite<CR>', {})
