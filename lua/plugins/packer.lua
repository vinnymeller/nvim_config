-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- local
	use({ "~/dev/projects/nvim/plugins/sqls.nvim" })

	-- main dependencies
	-------------------------------
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })
	-- plenary which everything uses
	use({ "nvim-lua/plenary.nvim" })

	-- theme and look
	-------------------------------
	-- catpuccin for my beautiful themes
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "levouh/tint.nvim" }) -- slightly tint background windows
	-- colored lines to track indents
	use({ "lukas-reineke/indent-blankline.nvim" })
	-- Noice, too unstable for now. I will come back to this
	-- use {
	--   "folke/noice.nvim",
	--   -- event = "VimEnter",
	--   requires = {
	--     "MunifTanjim/nui.nvim",
	--     "rcarriga/nvim-notify",
	--     }
	-- }

	-- -- navigation, file management, etc
	-------------------------------
	-- nvim-tree for file explorer
	use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" }, tag = "nightly" })
	-- status bar
	use({ "feline-nvim/feline.nvim" })
	-- TELESCOPE, to LOOK
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" })

	-- git stuff
	-------------------------------
	-- magit for neovim
	use({ "TimUntersberger/neogit" })
	-- diffview for use with magit
	use({ "sindrets/diffview.nvim" })
	-- git blamer
	use({ "APZelos/blamer.nvim" })
	-- git-worktrees, because this is a real issue frfr, prime is the goat
	use({ "ThePrimeagen/git-worktree.nvim" })

	-- debugger stuff
	-------------------------------
	-- dap debugger
	use({ "mfussenegger/nvim-dap" })
	-- debugger ui
	use({ "rcarriga/nvim-dap-ui" })

	-- database
	-------------------------------
	-- db stuff
	use({ "kristijanhusak/vim-dadbod-ui", requires = { "tpope/vim-dadbod" } })

	-- custom text objects and motions
	-------------------------------
	use({ "michaeljsmith/vim-indent-object" })
	use({ "wellle/targets.vim" })
	use({ "folke/which-key.nvim" })
	use({ "tpope/vim-commentary" })
	use({ "tpope/vim-surround" })
	use({ "windwp/nvim-autopairs" })
	use({ "ggandor/leap.nvim" })

	-- text parsing and lsp
	---------------------
	-- nvim-lspconfig for language server protocol help
	use({ "neovim/nvim-lspconfig" })
	-- copilot ... is copilot
	use({ "github/copilot.vim" })
	-- treesitter for superior syntax highlighting
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- run :TSUpdate after update
	use({ "nvim-treesitter/nvim-treesitter-context" })
	-- nvim-cmp
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	-- for snips
	use({ "L3MON4D3/LuaSnip" })
	use({ "saadparwaiz1/cmp_luasnip" })
	-- rust tools, the goated rust experience
	use({ "simrat39/rust-tools.nvim" })
	-- auto configure sumneko_lua lsp
	use({ "folke/neodev.nvim" })
	-- sqls lsp extra plugins

	-- other
	-------------------------------
	use({ "nullishamy/autosave.nvim" })
	use({ "mhartington/formatter.nvim" })
end)
