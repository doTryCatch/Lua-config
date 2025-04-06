local status, null_ls = pcall(require, "null-ls")
if (not status)
then
    return
end
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'fd', ':Prettier<CR>',
        { noremap = true, silent = true })
end

null_ls.setup {
    on_attach = on_attach,
    sources = {
        null_ls.builtins.diagnostics.eslint_d.with({
            diagnostics_format = '[eslint] #{m}\n(#{c})',
        }),
        null_ls.builtins.diagnostics.fish,
        null_ls.builtins.formatting.prettier.with({
            extra_args = {} -- Add any other options you want
        }),
    },
}
