local dis_arm = require "jit.dis_arm"
local keymap = vim.keymap
options = { noremap = true, silent = true }
-- keymap.set('i', '<Tab>', 'emmet#expandAbbrIntelligent()', { noremap = true, silent = true, expr = true })
-- this if to define key for accepting auto suggestion by codeium 
vim.keymap.set("i", "cs", function()

    if require("cmp").visible() then
        require("cmp").confirm({ select = true })  -- Accept nvim-cmp suggestion
    elseif vim.fn["codeium#Accept"]() ~= "" then
        return vim.fn["codeium#Accept"]()  -- Accept Codeium suggestion
    else
        require("cmp").complete()  -- Trigger nvim-cmp completion
    end
end, { expr = true, silent = true })
keymap.set('n', '<leader>w', ':w<CR>', options)

keymap.set('i', 'jk', '<ESC>', { noremap = true, silent = true })
-- Increment/Decrement keymap

keymap.set('n', '+', '<C-A>', { noremap = true })
keymap.set('n', '-', '<C-X>', { noremap = true })
--select all keymap
keymap.set('n', '<Space>a', 'ggVG')
--copy key mapping
--keymap.set('v','c','y',options) -- copy only selected portion
--keymap.set('n','c','ggVGy',options) -- copy intire portion

-- Function to create a new tab with a user-defined name
vim.api.nvim_set_keymap('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
local function CreateNamedTab()
    -- Prompt the user for a tab name
    local name = vim.fn.input("Enter tab name: ")

    -- Create a new tab
    vim.cmd('tabedit') -- Create a new tab

    -- Set the tab name
    if name ~= "" then
        vim.cmd('file ' .. name) -- Set the name (not a file, just a label)
    end
end
--go inside function shortcut key
-- Map 'gif' to move inside function block
-- Map 'gif' to go inside function block and enter insert mode at the right position
vim.api.nvim_set_keymap('n', 'gif', 'f{li', { noremap = true, silent = true })
--go inside function shortcut key
-- Map 'gif' to move inside function block

vim.api.nvim_set_keymap('n', 'gip', 'f(li', { noremap = true, silent = true })



-- Key mapping to move from Nvim Tree to the opened file
keymap.set('n', '<A-c>', '<C-w>w', options) -- Move to the opened file (Alt + l)
-- Delete content inside double quotes
--
vim.api.nvim_set_keymap('n', 'dis', 'di"', { noremap = true, silent = true })
-- Delete content inside curly braces
vim.api.nvim_set_keymap('n', 'd{', 'dvi{', { noremap = true, silent = true })

-- Delete the whole word (no space after)
vim.api.nvim_set_keymap('n', 'dw', 'daw', { noremap = true, silent = true })
-- Key mappings for tab management
keymap.set('n', 'nt', CreateNamedTab, options)    -- Create a new tab with a name
keymap.set('n', 'tq', ':tabclose<CR>', options)   -- Close current tab
keymap.set('n', 'J', ':tabprevious<CR>', options) -- Go to previous tab
keymap.set('n', 'K', ':tabnext<CR>', options)     -- Go to next tab
keymap.set('n', 'tt', ':tabs<CR>', options)
-- Key mappings for splitting windows
keymap.set('n', 'ss', ':split<CR>', options)  -- Horizontal split
keymap.set('n', 'sv', ':vsplit<CR>', options) -- Vertical split
-- move window
keymap.set('', 's<left>', '<C-w>h')           -- to switch on left window
keymap.set('', 's<right>', '<C-w>l')          -- to switch on right window
keymap.set('', 's<down>', '<C-w>j')           -- to switch on left window
keymap.set('', 's<up>', '<C-w>k')             -- to switch on left window eymamp.set('','s<left>','<C-w>h') -- to switch on left window
-- resize windowc
local keymap = vim.keymap

-- Enter resize mode
keymap.set('n', '<space>r', function()
    local opts = { noremap = true, silent = true, buffer = true }
    keymap.set('n', 'h', '<C-w><', opts)
    keymap.set('n', 'j', '<C-w>-', opts)
    keymap.set('n', 'k', '<C-w>+', opts)
    keymap.set('n', 'l', '<C-w>>', opts)

    -- Map <Esc> to exit resize mode by clearing the buffer-local mappings
    keymap.set('n', '<Esc>', function()
        keymap.del('n', 'h', { buffer = true })
        keymap.del('n', 'j', { buffer = true })
        keymap.del('n', 'k', { buffer = true })
        keymap.del('n', 'l', { buffer = true })
        keymap.del('n', '<Esc>', { buffer = true })
    end, opts)
end, options)
