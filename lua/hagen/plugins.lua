local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- autocommand that reloads neovim whenever you save the packer.lua file
vim.cmd([[
augroup packer_hagen_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end
  }
})

return packer.startup(function(use)
  use { "wbthomason/packer.nvim" }

  -- Core utilities
  use { "tpope/vim-commentary" }
  use { "tpope/vim-surround" }
  use { "tpope/vim-sleuth" }
  use { "windwp/nvim-autopairs" }
  use { "christoomey/vim-tmux-navigator" }

  -- Required by a lot of plugins
  use { "nvim-lua/plenary.nvim" }

  -- Git
  use { "lewis6991/gitsigns.nvim" }

  -- Telescope
  use { "nvim-lua/popup.nvim" }
  use { "nvim-telescope/telescope.nvim" }
  use { "kyazdani42/nvim-web-devicons" }

  -- Colorschemes
  use { "folke/tokyonight.nvim" }
  use { "gruvbox-community/gruvbox" }
  use { "dracula/vim", { as = "dracula" } }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter" }
  -- use { "nvim-treesitter/nvim-treesitter-angular" }
  -- use("glench/vim-jinja2-syntax")

  -- LSP
  use { "neovim/nvim-lspconfig" }
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use { "jose-elias-alvarez/null-ls.nvim" }
  -- use { "onsails/lspkind-nvim" }
  -- use { "glepnir/lspsaga.nvim" }
  -- use("simrat39/symbols-outline.nvim")

  -- CMP
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }

  -- Snippets
  use { "L3MON4D3/LuaSnip" }
  use { "rafamadriz/friendly-snippets" }

  -- use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }
  -- use("mbbill/undotree")

  -- use("tzachar/cmp-tabnine", { run = "./install.sh", requires = 'hrsh7th/nvim-cmp' })

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
