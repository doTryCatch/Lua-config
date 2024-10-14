local status, telescope = pcall(require, "telescope")
if not status then return end
local fb_actions = require("telescope").extensions.file_browser.actions
local actions = require('telescope.actions')

-- Setup Telescope
telescope.setup {
    defaults = {
        mappings = {
            n = {
              ['q'] = actions.close,                -- Close the Telescope window
              ['o'] = actions.select_default,       -- Open the selected file or folder
              ['u'] = fb_actions.goto_parent_dir,    -- Go back to the previous dir
            },
            i = {
                ["<C-n>"] = actions.move_selection_next,
                ["<C-p>"] = actions.move_selection_previous,
                ["<C-c>"] = actions.close,
            },
        },
    },
    file_ignore_patterns = { "node_modules", ".git" },
    extensions = {
        file_browser = {
            theme = 'dropdown',
            hijack_netrw = true,
        }
    }
}

-- Load extensions
telescope.load_extension('file_browser')

-- Key mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<A-f>', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-g>', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-d>', [[<Cmd>lua require('telescope.builtin').diagnostics()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-h>', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-b>', [[<Cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>]], opts)
