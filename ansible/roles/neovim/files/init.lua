require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use 'nvim-lua/plenary.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'nvim-treesitter/playground'}
        use {'nvim-telescope/telescope.nvim', tag = '0.1.7', requires = { {'nvim-lua/plenary.nvim'} } }
        use 'lewis6991/gitsigns.nvim'
end)
