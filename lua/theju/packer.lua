--Vim(eval):E5108: Error executing lua [string "luaeval()"]:1: loop or previous error loading module 'nvim-treesitter.health' This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} ,
  	               {'nvim-telescope/telescope-live-grep-args.nvim'},		
          },
	  config = function()
		  require('telescope').load_extension('live_grep_args')
	  end
  }

  use('theprimeagen/harpoon')
  use('tpope/vim-fugitive')
  use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use('preservim/tagbar')
end)
