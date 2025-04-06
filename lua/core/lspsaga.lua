local status, saga = pcall(require, "lspsaga")

if (not status) then return end

saga.setup {
    server_filetype_map = {
        typescript = 'typescript'
    }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'ej', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'hd', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'lf', '<Cmd>Lspsaga finder<CR>', opts)
vim.keymap.set('i', 'sh', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'pd', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'lr', ':Lspsaga rename<CR>', opts)               -- Fixed here
vim.keymap.set('i', '<Esc>', '<Cmd>Lspsaga rename_cancel<CR>', opts) -- Pressing Escape will cancel the rename
