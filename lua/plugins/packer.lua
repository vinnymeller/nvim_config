-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }
  -- treesitter for superior syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter' }
  -- plenary which everything uses
  use { 'nvim-lua/plenary.nvim' }
  -- catpuccin for my beautiful themes
  use { "catppuccin/nvim", as = "catppuccin" }
  -- nvim-tree for file explorer
  use { 'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, tag = 'nightly' }
  -- copilot ... is copilot
  use { 'github/copilot.vim' }
  -- nvim-lspconfig for language server protocol help
  use { 'neovim/nvim-lspconfig' }
  -- completion & language servers
  use {'neoclide/coc.nvim', branch = 'release'}
  -- status bar
  use { 'feline-nvim/feline.nvim' }
  -- primagen refactoring tools TODO: figure out how the fuck they work
  use { "ThePrimeagen/refactoring.nvim" } 
  -- TELESCOPE, to LOOK
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  -- git-worktrees, because this is a real issue frfr, prime is the goat
  use { 'ThePrimeagen/git-worktree.nvim' }
  -- magit for neovim 
  use { 'TimUntersberger/neogit' }
  -- diffview for use with magit
  use { 'sindrets/diffview.nvim' } 
  -- dap debugger
  use { "mfussenegger/nvim-dap" } 
  -- debugger ui
  use { "rcarriga/nvim-dap-ui" } 
  -- git blamer
  use { 'APZelos/blamer.nvim' }
  -- autosave
  use { 'Pocco81/auto-save.nvim' }
end)
