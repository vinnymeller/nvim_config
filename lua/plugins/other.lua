require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			".git/",
		},
	},
})

require("nvim-autopairs").setup({})

require("autosave").setup({})

require("leap").set_default_keymaps() -- nukes my s key

-- whichkey for discoverability
require("which-key").setup({})

require("tint").setup({
	tint = -20,
	saturation = 0.75,
})
