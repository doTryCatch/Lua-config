local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then return end

ts.setup {
    ensure_installed = {
        'tsx',
        'javascript',
        'typescript',
        'lua',
        'json',
        'html',
        'css',
        'prisma'
    },

    highlight = {                -- Updated to 'highlight' instead of 'highlights'
        enable = true,
        use_languagetree = true, -- Enable language tree for better highlighting

    },
}
