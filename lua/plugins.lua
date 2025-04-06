require("lazy").setup({
    -- LuaSnip for snippets

    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load() -- Load friendly snippets
        end,
    },
{
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
},
  -- Codeium for AI suggestions
  { "Exafunction/codeium.vim", event = "InsertEnter" },
    {

        "numToStr/Comment.nvim",
        event = "VeryLazy", -- Load the plugin lazily for better performance
        config = function()
            require('Comment').setup({
                -- Configuration options
                toggler = {
                    line = "gcc",  -- Toggle line comment
                    block = "gbc", -- Toggle block comment
                },
                opleader = {
                    line = "gc",  -- Line comment for visual/operator-pending mode
                    block = "gb", -- Block comment for visual/operator-pending mode
                },
                extra = {
                    above = "gcO", -- Add comment on the line above
                    below = "gco", -- Add comment on the line below
                    eol = "gcA",   -- Add comment at the end of the line
                },
                mappings = {
                    basic = true,    -- Basic mappings (gcc, gbc)
                    extra = true,    -- Extra mappings (gcO, gco, gcA)
                    extended = false -- Extended mappings like g> and g<
                },
            })
        end,
    },
    "neovim/nvim-lspconfig",
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    'lewis6991/gitsigns.nvim',
    'dinhhuy258/git.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    {
        'mattn/emmet-vim',
        config = function()
            vim.g.user_emmet_leader_key = '<C-E>' -- You can set this to any key combo for triggering Emmet
        end
    }
    ,

    'glepnir/Lspsaga.nvim',

    { 'nvim-treesitter/nvim-treesitter', run = ":TSUpate" },
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
        'hrsh7th/cmp-nvim-lua'      -- Lua completions
    },
    'windwp/nvim-autopairs',
    'windwp/nvim-ts-autotag',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
    'akinsho/bufferline.nvim',
    'norcalli/nvim-colorizer.lua'
})
-- Auto command to set custom highlights for specific file types
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html" },
    callback = function()
        -- Clear existing highlights for these groups
        local highlight_groups = {
            "tags", "TSTagAttribute", "Identifier", "Function", "String",
            "Type", "Keyword", "Import", "Constant", "Comment", "Operator", "Tag"
        }
        for _, group in ipairs(highlight_groups) do
            vim.cmd("highlight clear " .. group)
        end

        -- Define custom highlight groups with VS Code Dark+ colors
        vim.cmd([[
            highlight tags guifg=#569CD6 gui=bold                " Blue for HTML/JSX tags
            highlight TSTagAttribute guifg=#9CDCFE              " Light blue for attributes
            highlight Identifier guifg=#D4D4D4                  " Light gray for variables
            highlight Function guifg=#DCDCAA gui=italic         " Gold for function calls
            highlight String guifg=#CE9178                      " Orange for strings
            highlight Type guifg=#4EC9B0                        " Cyan for data types
            highlight Keyword guifg=#569CD6 gui=italic          " Blue for keywords
            highlight Import guifg=#C586C0                      " Purple for import/export
            highlight Constant guifg=#B5CEA8                    " Teal for constants
            highlight Comment guifg=#6A9955                     " Green for comments
            highlight Operator guifg=#D4D4D4                    " Light gray for operators
            highlight Tag guifg=#569CD6                         " Blue for tags
        ]])
    end,
})
