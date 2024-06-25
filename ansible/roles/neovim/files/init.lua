require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lua/plenary.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'nvim-treesitter/playground'}
        use {'nvim-telescope/telescope.nvim', tag = '0.1.7', requires = { {'nvim-lua/plenary.nvim'} } }
        use 'lewis6991/gitsigns.nvim'
end)

vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "vich"
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
