local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}, -- gruvbox
  "rebelot/kanagawa.nvim", -- kanagawa
  "nvim-treesitter/nvim-treesitter",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "lukas-reineke/indent-blankline.nvim",
  'nvim-lualine/lualine.nvim',
  'stevearc/oil.nvim',
  { "folke/which-key.nvim", event = "VeryLazy", opts = {} },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' }},
}

local opts = {
  install = {
    missing = true
  }
}

require("lazy").setup(plugins, opts)
