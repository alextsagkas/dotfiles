-- if packer is not installed it runs
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

-- reloads the neovim whenever you save this file
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]])

local packer_bootstrap = ensure_packer() -- true if packer is just installed

-- if it fails to import packer just return
local status, packer = pcall(require, "packer")
if not status then
	print("Packer failed")
	return
end

return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- indent lines
	use("lukas-reineke/indent-blankline.nvim")

	-- usefull lua function
	use("nvim-lua/plenary.nvim")

	-- colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- tmux and split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximazes and restores current window
	use("szw/vim-maximizer")

	-- surround add/delete
	use("tpope/vim-surround")

	-- commnet (use gcc to comment a line)
	use("numToStr/Comment.nvim")

	-- file icons
	use("nvim-tree/nvim-web-devicons")

	-- status bar
	use("nvim-lualine/lualine.nvim")

	-- file explorer
	use({ "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons" } })

	-- telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- treesitter and context
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("nvim-treesitter/nvim-treesitter-context")

	-- playgound (for developing plugins)
	use("nvim-treesitter/playground")

	-- auto-closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- harpoon
	use("theprimeagen/harpoon")

	-- undotree
	use("mbbill/undotree")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	-- use("hrsh7th/cmp-nvim-lua")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- git signs
	use("lewis6991/gitsigns.nvim")

	-- git functionality
	use("tpope/vim-fugitive")

	-- copilot
	use("github/copilot.vim")

	-- better comment functionality
	use("folke/todo-comments.nvim")

	-- color highlighting
	use("norcalli/nvim-colorizer.lua")

	-- taliwind colors
	use("themaxmarchuk/tailwindcss-colors.nvim")

	-- install coc.nvim
	use({ "neoclide/coc.nvim", branch = "release" })

	-- implements prisma language server
	use("pantharshit00/coc-prisma")

	-- latex support
	use("lervag/vimtex")

	-- -- markdown preview
	-- use({
	-- 	"iamcco/markdown-preview.nvim",
	-- 	run = "cd app && npm install",
	-- 	setup = function()
	-- 		vim.g.mkdp_filetypes = { "markdown" }
	-- 	end,
	-- 	ft = { "markdown" },
	-- })

	-- zen mode
	use("folke/zen-mode.nvim")

	-- tag bar
	use("preservim/tagbar")

	-- hightlight colors
	use("brenoprata10/nvim-highlight-colors")

	-- buffer line
	use("akinsho/nvim-bufferline.lua")

	-- buffer delete
	use("moll/vim-bbye")

	-- UI for messages, cmdline and popup menu
	-- use({
	-- 	"folke/noice.nvim",
	-- 	requires = {
	-- 		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	-- 		"MunifTanjim/nui.nvim",
	-- 		-- OPTIONAL:
	-- 		--   `nvim-notify` is only needed, if you want to use the notification view.
	-- 		--   If not available, we use `mini` as the fallback
	-- 		"rcarriga/nvim-notify",
	-- 	},
	-- })

	-- automatically set up your configuration after cloning packer.nvim
	if packer_bootstrap then
		require("packer").sync()
	end
end)
