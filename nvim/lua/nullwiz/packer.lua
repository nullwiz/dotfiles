-- plugins
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'styled-components/vim-styled-components'
  use 'mattn/emmet-vim'
  use 'ervandew/supertab'
  use 'luochen1990/rainbow'
  use 'fatih/vim-go'
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'darrikonn/vim-gofmt'
  use 'honza/vim-snippets'
  use 'Yggdroot/indentLine'
  use 'mhinz/vim-startify'
  use 'sudormrfbin/cheatsheet.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'ThePrimeagen/harpoon'
  use({'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"}})
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'jose-elias-alvarez/null-ls.nvim'
  use { "ellisonleao/gruvbox.nvim"}
  use {
  'nvim-telescope/telescope.nvim', tag='0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'nvim-treesitter/playground' })
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required 
  }
  }
   use 'nvim-tree/nvim-web-devicons'
   use 'github/copilot.vim'
   use 'mfussenegger/nvim-lint'
   use 'terrortylor/nvim-comment'
   use {
     'samodostal/image.nvim',
     requires = {
       'nvim-lua/plenary.nvim'
     },
  use 'simrat39/rust-tools.nvim'
   }

end)


