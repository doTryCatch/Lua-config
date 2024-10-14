-- Set global variables
vim.g.mapleader = " "        -- Set space as the leader key
vim.g.loaded_netrw = 1       -- Disable netrw plugin
vim.g.loaded_netrwPlugin = 1 -- Disable netrw plugin

-- Set options
vim.o.number = true             -- Show line numbers
vim.o.relativenumber = true     -- Show relative line numbers
vim.o.expandtab = true          -- Convert tabs to spaces
vim.o.tabstop = 4               -- Number of spaces a tab counts for
vim.o.shiftwidth = 4            -- Size of an auto-indent
vim.o.hlsearch = true           -- Highlight search results
vim.o.ignorecase = true         -- Ignore case when searching
vim.o.smartcase = true          -- Override ignorecase if the search pattern contains uppercase characters
vim.o.mouse = "a"               -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.termguicolors = true

-- service off for swap file creation which helps to prevent update loss as backup file
--vim.opt.swapfile = false
-- auto save on content change
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {

    pattern = "*",

    callback = function()
        vim.cmd("silent! write")
    end,

})
-- Additional settings can be added here
