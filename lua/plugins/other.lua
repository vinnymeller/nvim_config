require("telescope").setup({
	pickers = {
		live_grep = {
			additional_args = function(opts)
				return { "--hidden" }
			end,
		},
	},
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

-- enable all filetypes for Copilot
vim.g.copilot_filetypes = {
	["*"] = true,
}

require("swagger-preview").setup({})
