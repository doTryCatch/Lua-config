local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require "lspkind"
cmp.setup({
    snippet    = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping    = cmp.mapping.preset.insert({
        ['<A-j>'] = cmp.mapping.select_next_item(),
        ['<A-k>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),

        ['C-Space'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
    sources    = cmp.config.sources({
        {name='emmet_ls'},
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        {name='path'},
        {name ='luasnip'},

    }),
    formatting = {
        format = lspkind.cmp_format({ wirth_text = false, maxwidth = 50 })
    }
})
vim.cmd [[
set completeopt=menuone,noinsert,noselect
highlight! default link CmpItemKind CmpItemMenuDefault
]]
