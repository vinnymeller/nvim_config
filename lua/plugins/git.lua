-- neogit setup
require("neogit").setup({
    integrations = {
        diffview = true,
    },
})

-- diffview setup
require("diffview").setup({})

-- primagen refactoring setup
require('refactoring').setup({})

-- primagen git worktree for switching between worktrees
require("git-worktree").setup({
    autopush = true -- default: false,
})
require("telescope").load_extension("git_worktree")

vim.g.blamer_enabled = 1
vim.g.blamer_delay = 250
