-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
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
  use { "ThePrimeagen/refactoring.nvim", requires = { {"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"} } }
  -- TELESCOPE, to LOOK
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} } }
  -- git-worktrees, because this is a real issue frfr, prime is the goat
  use { 'ThePrimeagen/git-worktree.nvim' }
  -- magit for neovim 
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  -- diffview for use with magit
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- treesitter for superior syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = function() require("nvim-treesitter.install").update({ with_sync = true }) end }
  -- debugger ui
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)
