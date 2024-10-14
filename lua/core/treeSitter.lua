local status, ts = pcall (require,"nvim-treesitter.configs")
if (not status) then return end
ts.setup{
    highlights={
        enable = true ,
        disable = {}
    },
    indent = {
        enable = true ,
        disable = {}
    },
    ensure_installed = {
        'tsx',
        'lua',
        'json',
        'html',
        'css',
    },
    autotag = {
        autotag = true
    }
}
