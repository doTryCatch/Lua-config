local status, nvim_lsp = pcall(require, 'lspconfig')
if not status then
    print("error on loading lspconfig")
    return
end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    -- Enable formatting on buffer write if the server supports it
    --    vim.api.nvim_command [[autocmd FileType javascriptreact,typescriptreact,html EmmetInstall]]
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        -- formatting and deletion of blank lines
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

        vim.api.nvim_command [[augroup END]]
    end
end

-- setup for html language server
nvim_lsp.html.setup {

}
nvim_lsp.prismals.setup{}
--Setup TypeScript Language Server (for React framework)
nvim_lsp.ts_ls.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "jsx", "tsx" },
    cmd = { "typescript-language-server", "--stdio" },
}

-- Setup Python Language Server
nvim_lsp.pyright.setup {
    on_attach = on_attach,
    filetypes = { "python" },
    cmd = { "pyright-langserver", "--stdio" },
}


nvim_lsp.lua_ls.setup {
    on_attach = on_attach,
    cmd = { "/home/linuxbrew/.linuxbrew/bin/lua-language-server" },
    settings = {
        Lua = {
            diagnostics = {
                -- Recognize 'vim' as a global
                globals = { 'vim' }
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            }
        }
    }
}
