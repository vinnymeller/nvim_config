-- color scheme setup
vim.g.catpuccin_flavour = "frappe"
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]


-- configure status bar
require('feline').setup()

-- treesitter setup
require("nvim-treesitter.configs").setup({
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})

-- nvim-tree setup
-- uses defaults so far, TODO: explore this further
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  filters = {
    dotfiles = false,
  },
})
