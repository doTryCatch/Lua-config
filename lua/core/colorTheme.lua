require("catppuccin").setup({



    flavour = "mocha",

    transparent_background = true,
    term_colors = true,

    styles = {

        comments = { "italic" },

    },

    integrations = {

        treesitter = true,

        lsp_trouble = true, -- Enable LSP Trouble for diagnostics

        gitsigns = true,

        bufferline = true,



    },


})

vim.cmd [[colorscheme catppuccin]]
