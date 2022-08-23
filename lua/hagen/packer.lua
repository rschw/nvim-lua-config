return require("packer").startup(function()

    use("wbthomason/packer.nvim")

    -- color schemes
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use("dracula/vim", { as = "dracula" })

    -- useful
    use("christoomey/vim-tmux-navigator")
    use("mbbill/undotree")

    use("tpope/vim-commentary")
    use("tpope/vim-surround")
    use("tpope/vim-sleuth")

    -- treesitter
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-angular")
    use("glench/vim-jinja2-syntax")
    -- use("windwp/nvim-autopairs")

    -- telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("kyazdani42/nvim-web-devicons")

    -- lsp goodness
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind-nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("tzachar/cmp-tabnine", { run = "./install.sh", requires = 'hrsh7th/nvim-cmp' })
    use("saadparwaiz1/cmp_luasnip")
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")

end)
