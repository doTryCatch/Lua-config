local status1, mason = pcall(require, "mason")
if (not status1) then return end
local status2, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end
mason.setup {}
mason_lspconfig.setup {
    ensure_installed = { 'tailwindcss' ,'emmet_ls'}
}
local lspconfig = require('lspconfig')

lspconfig.tailwindcss.setup {}
lspconfig.emmet_ls.setup({
  filetypes = { 'html', 'css', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'svelte' },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = true,
      },
    },
  },
})
