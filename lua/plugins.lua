require("lazy").setup({
    "neovim/nvim-lspconfig",
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    'lewis6991/gitsigns.nvim',
    'dinhhuy258/git.nvim',

    'glepnir/Lspsaga.nvim',
    { 'nvim-treesitter/nvim-treesitter', event = "BufRead" },
    { 'catppuccin/nvim',                 name = 'catppuccin', priority = 1000 },
    checker = { enabled = true },
    'nvim-lualine/lualine.nvim',
    {
        'hrsh7th/nvim-cmp',         -- Autocompletion plugin
        'onsails/lspkind-nvim',     -- vsocde like pictograms
        'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
        'hrsh7th/cmp-buffer',       -- Buffer completions
        'hrsh7th/cmp-path',         -- Path completions
        'hrsh7th/cmp-cmdline',      -- Cmdline completions
        'saadparwaiz1/cmp_luasnip', -- Snippets completions
        'L3MON4D3/LuaSnip',         -- Snippets engine
        'hrsh7th/cmp-nvim-lua',     -- Lua completions
    },
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'akinsho/bufferline.nvim',
    'norcalli/nvim-colorizer.lua'
})
