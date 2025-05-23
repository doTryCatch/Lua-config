local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end
bufferline.setup {
    options = {
        mode = 'tabs',
        separator_style = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icon = false,
        show_close_icon = false,
        color_icons = true
    },
    highlights = {
        separator = {
            guifg = '#073642',
            guibg = '#002b36',

        },
        separator_selected = {
            guifg = '#073642',

        },
        background = {
            guifg = '#657b83',
            guibg = '#002b36',

        },
        buffer_selected = {

            guifg = '#fdf6e3',
            gui = 'bold',

        },
        fill = {
            guibg = '#073642'
        }
    }
}
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrevious<CR>', opts)
