return require("packer").startup(function()

    use("wbthomason/packer.nvim")

    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use("dracula/vim", { as = "dracula" })

    use("christoomey/vim-tmux-navigator")

    use("mbbill/undotree")
    use("tpope/vim-commentary")
    use("tpope/vim-surround")

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-angular")
    use("glench/vim-jinja2-syntax")

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("kyazdani42/nvim-web-devicons")

    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh", requires = 'hrsh7th/nvim-cmp' })
    use("onsails/lspkind-nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

end)
