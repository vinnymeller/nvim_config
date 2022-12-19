-- color scheme setup
vim.g.catpuccin_flavour = "frappe"
require("catppuccin").setup()
vim.cmd([[colorscheme catppuccin]])

-- configure status bar
require("feline").setup()

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

-- indent-blankline config for rainbow indents
vim.opt.termguicolors = true
vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])

vim.opt.list = true
-- vim.opt.listchars:append "space:\u22c5"
-- vim.opt.listchars:append "eol:\u21b4"

require("indent_blankline").setup({
	space_char_blankline = " ",
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
})

